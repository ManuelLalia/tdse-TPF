/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_system_attribute.h"
#include "task_set_up_attribute.h"
#include "task_system_interface.h"
#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"
#include "task_normal.h"
#include "task_set_up.h"

/********************** macros and definitions *******************************/
#define G_TASK_SYS_CNT_INI			0ul
#define G_TASK_SYS_TICK_CNT_INI		0ul

#define DEL_SYS_XX_MIN				0ul
#define DEL_SYS_XX_MED				50ul
#define DEL_SYS_XX_MAX				500ul

#define MAX_SYS_XX_AUTOS			11ul

/********************** internal data declaration ****************************/
task_system_dta_t task_system_dta = {\
	DEL_SYS_XX_MIN, \
	ST_SYS_XX_DESACTIVADO, \
	false, \
	false, \
	{ 4, 2, { EV_SYS_XX_DESACTIVAR_DOWN, 0 }, NULL }, \
};

#define SYSTEM_DTA_QTY	(sizeof(task_system_dta)/sizeof(task_system_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/

/********************** external data declaration ****************************/
uint32_t g_task_system_cnt;
volatile uint32_t g_task_system_tick_cnt;

/********************** external functions definition ************************/
void task_system_init(void *parameters) {
	task_system_dta_t 	*p_task_system_dta;
	task_system_st_t	state;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - Task System\r\n", GET_NAME(task_system_init));
	LOGGER_LOG("  %s is a General\r\n", GET_NAME(task_system));

	g_task_system_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_system_cnt), g_task_system_cnt);

	init_queue_event_task_system();

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_system_dta = &task_system_dta;

	/* Print out: Task execution FSM */
	state = p_task_system_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

	g_task_system_tick_cnt = G_TASK_SYS_TICK_CNT_INI;

	task_system_normal_init(NULL);
	task_system_set_up_init(NULL);
}

void task_system_update(void *parameters) {
	task_system_dta_t *p_task_system_dta;
	bool b_time_update_required = false;

	/* Update Task System Counter */
	g_task_system_cnt++;

	/* Protect shared resource (g_task_system_tick) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_SYS_TICK_CNT_INI < g_task_system_tick_cnt) {
    	g_task_system_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required) {
		/* Protect shared resource (g_task_system_tick) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_SYS_TICK_CNT_INI < g_task_system_tick_cnt) {
			g_task_system_tick_cnt--;
			b_time_update_required = true;
		} else {
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	/* Update Task System Data Pointer */
		p_task_system_dta = &task_system_dta;
		if (!any_event_task_system()) {
			continue;
		}

		dta_event_sensor_t dta_event = get_event_task_system();
		p_task_system_dta->dta_subsystem.dta_event = dta_event;

		switch (p_task_system_dta->state) {
			case ST_SYS_XX_DESACTIVADO:
				if (!p_task_system_dta->bloqueado && EV_SYS_XX_ACTIVAR == dta_event.event) {
					p_task_system_dta->state = ST_SYS_XX_NORMAL;
					p_task_system_dta->activo = true;
					put_event_task_actuator(EV_LED_XX_BLINK_ON, ID_LED_ACTIVADO);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_DESACTIVADO);

				} else if (!p_task_system_dta->bloqueado && EV_SYS_XX_CONFIGURAR == dta_event.event) {
					p_task_system_dta->state = ST_SYS_XX_SET_UP;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_DESACTIVADO);
					task_system_set_up_update(&p_task_system_dta->dta_subsystem);

				} else if (EV_SYS_XX_DESACTIVAR_DOWN == dta_event.event) {
					p_task_system_dta->bloqueado = false;

				} else if (EV_SYS_XX_DESACTIVAR_UP == dta_event.event) {
					p_task_system_dta->bloqueado = true;
					p_task_system_dta->activo = false;
				}

				break;

			case ST_SYS_XX_NORMAL:
				if (EV_SYS_XX_DESACTIVAR_UP == dta_event.event) {
					p_task_system_dta->state = ST_SYS_XX_DESACTIVADO;
					p_task_system_dta->bloqueado = true;
					p_task_system_dta->activo = false;
					put_event_task_actuator(EV_LED_XX_BLINK_OFF, ID_LED_ACTIVADO);
					put_event_task_actuator(EV_LED_XX_ON, ID_LED_DESACTIVADO);
					task_system_normal_update(&p_task_system_dta->dta_subsystem);

				} else if (EV_SYS_XX_CONFIGURAR == dta_event.event) {
					p_task_system_dta->state = ST_SYS_XX_SET_UP;
					put_event_task_actuator(EV_LED_XX_BLINK_OFF, ID_LED_ACTIVADO);
					task_system_normal_update(&p_task_system_dta->dta_subsystem);
					task_system_set_up_update(&p_task_system_dta->dta_subsystem);

				} else {
					task_system_normal_update(&p_task_system_dta->dta_subsystem);
				}

				break;

			case ST_SYS_XX_SET_UP:
				if (EV_SYS_XX_DESACTIVAR_UP == dta_event.event) {
					p_task_system_dta->state = ST_SYS_XX_DESACTIVADO;
					p_task_system_dta->bloqueado = true;
					p_task_system_dta->activo = false;

				} else {
					task_set_up_parameters_t parametros_set_up;
					parametros_set_up.salir = false;
					parametros_set_up.default_max_autos = MAX_SYS_XX_AUTOS;

					p_task_system_dta->dta_subsystem.parametros = &parametros_set_up;
					task_system_set_up_update(&p_task_system_dta->dta_subsystem);

					if (parametros_set_up.salir && !p_task_system_dta->activo) {
						p_task_system_dta->state = ST_SYS_XX_DESACTIVADO;
						put_event_task_actuator(EV_LED_XX_ON, ID_LED_DESACTIVADO);

					} else if (parametros_set_up.salir && p_task_system_dta->activo) {
						p_task_system_dta->state = ST_SYS_XX_NORMAL;
						put_event_task_actuator(EV_LED_XX_BLINK_ON, ID_LED_ACTIVADO);
						task_system_normal_update(&p_task_system_dta->dta_subsystem);
					}
				}

				break;
		}
	}
}

/********************** end of file ******************************************/
