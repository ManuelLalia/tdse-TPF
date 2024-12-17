/*
 * task_normal.c
 *
 *  Created on: Dec 12, 2024
 *      Author: Grupo 2
 */
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
#include "task_normal_attribute.h"
#include "task_system_interface.h"
#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"
#include "task_display_interface.h"
#include "task_system.h"
#include "task_normal.h"

/********************** macros and definitions *******************************/
#define G_TASK_SYS_CNT_INI			0ul
#define G_TASK_SYS_TICK_CNT_INI		0ul

#define DEL_SYS_XX_MIN				0ul
#define DEL_SYS_XX_MED				50ul
#define DEL_SYS_XX_MAX				500ul

/********************** internal data declaration ****************************/
task_system_normal_dta_t task_system_normal_dta = { \
	ST_NORMAL_XX_VACIO, 0, 0, 0, false, \
};

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/

/********************** external data declaration ****************************/

/********************** external functions definition ************************/
void task_system_normal_init(void *parameters) {
	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - Task Normal\r\n", GET_NAME(task_system_init));
	LOGGER_LOG("  %s is a Estado normal de ejecución\r\n", GET_NAME(task_system));

	g_task_system_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_system_cnt), g_task_system_cnt);
}

void task_system_normal_update(void *parameters) {
	task_system_normal_dta_t *p_task_system_normal_dta = &task_system_normal_dta;
	task_subsystem_dta_t* dta = (task_subsystem_dta_t*) parameters;
	dta_event_sensor_t dta_event = dta->dta_event;

	/* Chequear que estamos en el estado correcto */
	if (p_task_system_normal_dta->cant_autos < dta->advertencia_autos) {
		if (p_task_system_normal_dta->cant_autos == 0) {
			p_task_system_normal_dta->state = ST_NORMAL_XX_VACIO;
		} else {
			p_task_system_normal_dta->state = ST_NORMAL_XX_NO_VACIO;
		}

		if (p_task_system_normal_dta->vaciar) {
			put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PUEDE_PASAR);
		} else {
			put_event_task_actuator(EV_LED_XX_ON, ID_LED_PUEDE_PASAR);
		}

		put_event_task_actuator(EV_LED_XX_OFF, ID_LED_ADVERTENCIA);
		put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER_ULULALERO);

	} else {

		if (p_task_system_normal_dta->cant_autos < dta->max_autos) {
			p_task_system_normal_dta->state = ST_NORMAL_XX_AVISO;
			put_event_task_actuator(EV_LED_XX_ON, ID_LED_PUEDE_PASAR);
			put_event_task_actuator(EV_LED_XX_ON, ID_LED_ADVERTENCIA);
			put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER_ULULALERO);

		} else {
			p_task_system_normal_dta->state = ST_NORMAL_XX_LLENO;
			put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PUEDE_PASAR);
			put_event_task_actuator(EV_LED_XX_OFF, ID_LED_ADVERTENCIA);
			put_event_task_actuator(EV_LED_XX_ON, ID_BUZZER_ULULALERO);
		}
	}

	if (EV_SYS_XX_VACIAR_UP == dta_event.event) {
		p_task_system_normal_dta->state = ST_NORMAL_XX_VACIO;
		p_task_system_normal_dta->cant_autos = 0;
		p_task_system_normal_dta->vaciar = true;
		put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PUEDE_PASAR);
		put_event_task_actuator(EV_LED_XX_OFF, ID_LED_ADVERTENCIA);
		put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER_ULULALERO);

	} else if (EV_SYS_XX_TMP_SENSOR == dta_event.event) {
		p_task_system_normal_dta->tmp_sensor = dta_event.value;

	} else if (EV_SYS_XX_TMP_INTERNO == dta_event.event) {
		p_task_system_normal_dta->tmp_interna = dta_event.value;

	} else if (EV_SYS_XX_CONFIGURAR == dta_event.event || EV_SYS_XX_DESACTIVAR_UP == dta_event.event) {
		put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PUEDE_PASAR);
		put_event_task_actuator(EV_LED_XX_OFF, ID_LED_ADVERTENCIA);
		put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER_ULULALERO);

	} else {

		switch (p_task_system_normal_dta->state) {
			case ST_NORMAL_XX_VACIO:
				if (EV_SYS_XX_VACIAR_DOWN == dta_event.event) {
					p_task_system_normal_dta->vaciar = false;
					put_event_task_actuator(EV_LED_XX_ON, ID_LED_PUEDE_PASAR);

				} else if (!p_task_system_normal_dta->vaciar && EV_SYS_XX_INGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos++;
					if (p_task_system_normal_dta->cant_autos >= dta->advertencia_autos) {
						p_task_system_normal_dta->state = ST_NORMAL_XX_AVISO;
						put_event_task_actuator(EV_LED_XX_ON, ID_LED_ADVERTENCIA);

					} else {
						p_task_system_normal_dta->state = ST_NORMAL_XX_NO_VACIO;
					}

				}
				break;

			case ST_NORMAL_XX_NO_VACIO:
				if (EV_SYS_XX_INGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos++;
					if (p_task_system_normal_dta->cant_autos >= dta->advertencia_autos) {
						p_task_system_normal_dta->state = ST_NORMAL_XX_AVISO;
						put_event_task_actuator(EV_LED_XX_ON, ID_LED_ADVERTENCIA);
					}

				} else if (EV_SYS_XX_EGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos--;
					if (p_task_system_normal_dta->cant_autos == 0) {
						p_task_system_normal_dta->state = ST_NORMAL_XX_VACIO;
					}
				}
				break;

			case ST_NORMAL_XX_AVISO:
				if (EV_SYS_XX_INGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos++;
					if (p_task_system_normal_dta->cant_autos >= dta->max_autos) {
						p_task_system_normal_dta->state = ST_NORMAL_XX_LLENO;
						put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PUEDE_PASAR);
						put_event_task_actuator(EV_LED_XX_OFF, ID_LED_ADVERTENCIA);
						put_event_task_actuator(EV_LED_XX_ON, ID_BUZZER_ULULALERO);
					}

				} else if (EV_SYS_XX_EGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos--;
					if (p_task_system_normal_dta->cant_autos < dta->advertencia_autos) {
						if (p_task_system_normal_dta->cant_autos == 0) {
							p_task_system_normal_dta->state = ST_NORMAL_XX_VACIO;
						} else {
							p_task_system_normal_dta->state = ST_NORMAL_XX_NO_VACIO;
						}
						put_event_task_actuator(EV_LED_XX_OFF, ID_LED_ADVERTENCIA);
					}
				}
				break;

			case ST_NORMAL_XX_LLENO:
				if (EV_SYS_XX_EGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos--;
					if (p_task_system_normal_dta->cant_autos < dta->max_autos) {
						p_task_system_normal_dta->state = ST_NORMAL_XX_AVISO;
						put_event_task_actuator(EV_LED_XX_ON, ID_LED_PUEDE_PASAR);
						put_event_task_actuator(EV_LED_XX_ON, ID_LED_ADVERTENCIA);
						put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER_ULULALERO);
					}
				}
				break;

		}
	}

	// Display
	put_event_task_display(0, 0, "Cnt:00 A:00 M:00");
	put_event_task_display(0, 1, "TS:00.C  TI:00.C");

	char cant_auto_text[MAX_TEXT];
	snprintf(cant_auto_text, sizeof(cant_auto_text), "%lu", p_task_system_normal_dta->cant_autos);
	put_event_task_display((p_task_system_normal_dta->cant_autos > 9) ? 4 : 5, 0, cant_auto_text);

	char advertencia_text[MAX_TEXT];
	snprintf(advertencia_text, sizeof(advertencia_text), "%lu", dta->advertencia_autos);
	put_event_task_display((dta->advertencia_autos > 9) ? 9 : 10, 0, advertencia_text);

	char max_text[MAX_TEXT];
	snprintf(max_text, sizeof(max_text), "%lu", dta->max_autos);
	put_event_task_display((dta->max_autos > 9) ? 14 : 15, 0, max_text);

	// T(°C) = tension / 10(mV / °C)
	float tension_mv = 3300.0 * ((float) (p_task_system_normal_dta->tmp_sensor)) / 4096.0;
	uint32_t tmp_sensor = (uint32_t) (tension_mv / 10);

	char tmp_sensor_text[MAX_TEXT];
	snprintf(tmp_sensor_text, 3, "%lu", tmp_sensor);
	put_event_task_display((tmp_sensor > 9) ? 3 : 4, 1, tmp_sensor_text);

	// T(°C) = (1.43V - tension) / 4.3 (mv / °C) + 25 (°C)
	tension_mv = 3300.0 * ((float) (p_task_system_normal_dta->tmp_interna)) / 4096.0;
	float f_tmp_interna = 25.0 + (1430.0 - tension_mv) / 4.3;
	uint32_t tmp_interna = (f_tmp_interna < 0) ? 0 : (uint32_t) f_tmp_interna;

	char tmp_interna_text[MAX_TEXT];
	snprintf(tmp_interna_text, 3, "%lu", tmp_interna);
	put_event_task_display((tmp_interna > 9) ? 12 : 13, 1, tmp_interna_text);
}
