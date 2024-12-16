/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_sensor_attribute.h"
#include "task_system_attribute.h"
#include "task_system_interface.h"

/********************** macros and definitions *******************************/
#define G_TASK_SEN_CNT_INIT			0ul
#define G_TASK_SEN_TICK_CNT_INI		0ul

#define DEL_BTN_XX_MIN				0ul
#define DEL_BTN_XX_MED				25ul
#define DEL_BTN_XX_MAX				50ul

/********************** internal data declaration ****************************/
const task_sensor_cfg_t task_sensor_cfg_list[] = {
	{ID_BTN_CONFIGURACION,  BTN_A_PORT,  BTN_A_PIN,  BTN_A_PRESSED, DEL_BTN_XX_MAX, {}, 0, {EV_SYS_XX_NEXT, EV_SYS_XX_CONFIGURAR}, 2},
	{ID_BTN_NEXT,  			BTN_B_PORT,  BTN_B_PIN,  BTN_B_PRESSED, DEL_BTN_XX_MAX, {}, 0, {EV_SYS_XX_INGRESO, EV_SYS_XX_ACTIVAR, EV_SYS_XX_ENTER}, 3},
	{ID_BTN_EGRESO,     	BTN_C_PORT,  BTN_C_PIN,  BTN_C_PRESSED, DEL_BTN_XX_MAX, {}, 0, {EV_SYS_XX_EGRESO}, 1},
	{ID_DSW_DESACTIVAR,  	DSW_A_PORT,  DSW_A_PIN,  DSW_A_PRESSED, DEL_BTN_XX_MAX, {EV_SYS_XX_DESACTIVAR_UP}, 1, {EV_SYS_XX_DESACTIVAR_DOWN}, 1},
	{ID_DSW_VACIAR,     	DSW_B_PORT,  DSW_B_PIN,  DSW_B_PRESSED, DEL_BTN_XX_MAX, {EV_SYS_XX_VACIAR_UP}, 1, {EV_SYS_XX_VACIAR_DOWN}, 1},
};

#define TEMPERATURA_CFG_QTY	(sizeof(task_sensor_cfg_list)/sizeof(task_sensor_cfg_t))

task_sensor_dta_t task_sensor_dta_list[] = {
	{DEL_BTN_XX_MIN, ST_BTN_XX_UP, EV_BTN_XX_UP},
	{DEL_BTN_XX_MIN, ST_BTN_XX_UP, EV_BTN_XX_UP},
	{DEL_BTN_XX_MIN, ST_BTN_XX_UP, EV_BTN_XX_UP},
	{DEL_BTN_XX_MIN, ST_BTN_XX_UP, EV_BTN_XX_UP},
	{DEL_BTN_XX_MIN, ST_BTN_XX_UP, EV_BTN_XX_UP},
};

#define SENSOR_DTA_QTY	(sizeof(task_sensor_dta_list)/sizeof(task_sensor_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/

/********************** external data declaration ****************************/
uint32_t g_task_sensor_cnt;
volatile uint32_t g_task_sensor_tick_cnt;

/********************** external functions definition ************************/
void task_sensor_init(void *parameters) {
	task_sensor_dta_t *p_task_sensor_dta;
	task_sensor_st_t state;
	task_sensor_ev_t event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - Task Sensor (Sensor Statechart)\r\n", GET_NAME(task_sensor_init));
	LOGGER_LOG("  %s is a Botones y Dip Switch\r\n", GET_NAME(task_sensor));

	g_task_sensor_cnt = G_TASK_SEN_CNT_INIT;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_sensor_cnt), g_task_sensor_cnt);

	for (uint32_t index = 0; SENSOR_DTA_QTY > index; index++) {
		/* Update Task Sensor Data Pointer */
		p_task_sensor_dta = &task_sensor_dta_list[index];

		/* Print out: Index & Task execution FSM */
		LOGGER_LOG("   %s = %lu", GET_NAME(index), index);

		state = p_task_sensor_dta->state;
		LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

		event = p_task_sensor_dta->event;
		LOGGER_LOG("   %s = %lu\r\n", GET_NAME(event), (uint32_t)event);
	}

	g_task_sensor_tick_cnt = G_TASK_SEN_TICK_CNT_INI;
}

void task_sensor_update(void *parameters) {
	const task_sensor_cfg_t *p_task_sensor_cfg;
	task_sensor_dta_t *p_task_sensor_dta;
	bool b_time_update_required = false;

	/* Update Task Sensor Counter */
	g_task_sensor_cnt++;

	/* Protect shared resource (g_task_sensor_tick_cnt) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_SEN_TICK_CNT_INI < g_task_sensor_tick_cnt) {
    	g_task_sensor_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required) {
		/* Protect shared resource (g_task_sensor_tick_cnt) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_SEN_TICK_CNT_INI < g_task_sensor_tick_cnt) {
			g_task_sensor_tick_cnt--;
			b_time_update_required = true;

		} else {
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	for (uint32_t index = 0; SENSOR_DTA_QTY > index; index++) {
    		/* Update Task Sensor Configuration & Data Pointer */
			p_task_sensor_cfg = &task_sensor_cfg_list[index];
			p_task_sensor_dta = &task_sensor_dta_list[index];

			if (p_task_sensor_cfg->pressed == HAL_GPIO_ReadPin(p_task_sensor_cfg->gpio_port, p_task_sensor_cfg->pin)) {
				p_task_sensor_dta->event =	EV_BTN_XX_DOWN;

			} else {
				p_task_sensor_dta->event =	EV_BTN_XX_UP;
			}

			switch (p_task_sensor_dta->state) {
				case ST_BTN_XX_UP:

					if (EV_BTN_XX_DOWN == p_task_sensor_dta->event) {
						p_task_sensor_dta->state = ST_BTN_XX_FALLING;
						p_task_sensor_dta->tick = p_task_sensor_cfg->tick_max;
					}

					break;

				case ST_BTN_XX_FALLING:
				case ST_BTN_XX_RISING:

					if (p_task_sensor_dta->tick == 0) {
						if (EV_BTN_XX_UP == p_task_sensor_dta->event){
							p_task_sensor_dta->state = ST_BTN_XX_UP;

							for (uint32_t i = 0; i < p_task_sensor_cfg->cant_signals_up; i++) {
								put_event_task_system(p_task_sensor_cfg->signals_up[i]);
							}

						} else if (EV_BTN_XX_DOWN == p_task_sensor_dta->event) {
							p_task_sensor_dta->state = ST_BTN_XX_DOWN;

							for (uint32_t i = 0; i < p_task_sensor_cfg->cant_signals_down; i++) {
								put_event_task_system(p_task_sensor_cfg->signals_down[i]);
							}
						}

					} else if (p_task_sensor_dta->tick > 0) {
						p_task_sensor_dta->tick--;
					}

					break;

				case ST_BTN_XX_DOWN:

					if (EV_BTN_XX_UP == p_task_sensor_dta->event) {
						p_task_sensor_dta->state = ST_BTN_XX_RISING;
						p_task_sensor_dta->tick = p_task_sensor_cfg->tick_max;
					}

					break;
			}
		}
    }
}

/********************** end of file ******************************************/
