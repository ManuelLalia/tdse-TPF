/*
 * task_set_up.c
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

#define SYSTEM_DTA_QTY	(sizeof(task_system_dta)/sizeof(task_system_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_system 		= "Task Normal";
const char *p_task_system_ 		= "Estado normal de ejecución";

/********************** external data declaration ****************************/
volatile uint32_t g_task_system_normal_tick_cnt;

/********************** external functions definition ************************/
void task_system_normal_init(void *parameters) {
	task_system_normal_dta_t 	*p_task_system_dta;
	task_system_st_t	state;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_system_init), p_task_system);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_system), p_task_system_);

	g_task_system_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_system_cnt), g_task_system_cnt);

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_system_dta = &task_system_dta;

	/* Print out: Task execution FSM */
	state = p_task_system_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);


	g_task_system_normal_tick_cnt = G_TASK_SYS_TICK_CNT_INI;
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
	} else {
		if (p_task_system_normal_dta->cant_autos < dta->max_autos) {
			p_task_system_normal_dta->state = ST_NORMAL_XX_AVISO;
		} else {
			p_task_system_normal_dta->state = ST_NORMAL_XX_LLENO;
		}
	}

	if (EV_SYS_XX_VACIAR_UP == dta_event.event) {
		p_task_system_dta->state = ST_NORMAL_XX_VACIO;
		p_task_system_normal_dta->cant_autos = 0;
		p_task_system_normal_dta->vaciar = true;

	} else if (EV_SYS_XX_TMP_SENSOR == dta_event.event) {
		p_task_system_normal_dta->tmp_sensor = dta_event.value;

	} else if (EV_SYS_XX_TMP_INTERNO == dta_event.event) {
		p_task_system_normal_dta->tmp_interna = dta_event.value;

	} else {

		switch (p_task_system_dta->state) {
			case ST_NORMAL_XX_VACIO:
				if (EV_SYS_XX_VACIAR_DOWN == dta_event.event) {
					p_task_system_normal_dta->vaciar = false;

				} else if (!p_task_system_normal_dta->vaciar && EV_SYS_XX_INGRESO == dta_event.event) {
					p_task_system_dta->state = ST_NORMAL_XX_NO_VACIO;
					p_task_system_normal_dta->cant_autos++;

				}
				break;

			case ST_NORMAL_XX_NO_VACIO:
				if (EV_SYS_XX_INGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos++;
					if (p_task_system_normal_dta->cant_autos >= dta->advertencia_autos) {
						p_task_system_dta->state = ST_NORMAL_XX_AVISO;
					}

				} else if (EV_SYS_XX_EGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos--;
					if (p_task_system_normal_dta->cant_autos == 0) {
						p_task_system_dta->state = ST_NORMAL_XX_VACIO;
					}
				}
				break;

			case ST_NORMAL_XX_AVISO:
				if (EV_SYS_XX_INGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos++;
					if (p_task_system_normal_dta->cant_autos >= dta->max_autos) {
						p_task_system_dta->state = ST_NORMAL_XX_LLENO;
					}

				} else if (EV_SYS_XX_EGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos--;
					if (p_task_system_normal_dta->cant_autos < dta->advertencia_autos) {
						p_task_system_dta->state = ST_NORMAL_XX_NO_VACIO;
					}
				}
				break;

			case ST_NORMAL_XX_LLENO:
				if (EV_SYS_XX_EGRESO == dta_event.event) {
					p_task_system_normal_dta->cant_autos--;
					if (p_task_system_normal_dta->cant_autos < dta->max_autos) {
						p_task_system_dta->state = ST_NORMAL_XX_AVISO;
					}
				}
				break;

		}
	}

	// Display
	put_event_task_display(0, 0, "Cnt:00 A:00 M:00");
	put_event_task_display(0, 1, "TS:00°C  TI:00°C");

	char cant_auto_text[MAX_TEXT];
	snprintf(cant_auto_text, sizeof(cant_auto_text), "%i", task_system_normal_dta->cant_autos);
	put_event_task_display((p_task_system_normal_dta->cant_autos > 9) ? 4 : 5, 0, cant_auto_text);

	char advertencia_text[MAX_TEXT];
	snprintf(advertencia_text, sizeof(advertencia_text), "%i", dta->advertencia_autos);
	put_event_task_display((dta->advertencia_autos > 9) ? 9 : 10, 0, advertencia_text);

	char max_text[MAX_TEXT];
	snprintf(max_text, sizeof(max_text), "%i", dta->max_autos);
	put_event_task_display((dta->max_autos > 9) ? 14 : 15, 0, max_text);

	// T(°C) = tension / 10(mV / C°)
	uint32_t tmp_sensor = p_task_system_normal_dta->tmp_sensor * 500 / 4096;

	char tmp_sensor_text[MAX_TEXT];
	snprintf(tmp_sensor_text, sizeof(tmp_sensor_text), "%i", tmp_sensor);
	put_event_task_display((tmp_sensor > 9) ? 3 : 4, 1, tmp_sensor_text);

	// TODO
	uint32_t tmp_interna = 0;

	char tmp_interna_text[MAX_TEXT];
	snprintf(tmp_interna_text, sizeof(tmp_interna_text), "%i", tmp_interna);
	put_event_task_display((tmp_interna > 9) ? 12 : 13, 1, tmp_interna_text);
}


