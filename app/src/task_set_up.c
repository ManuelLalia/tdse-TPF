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
#include "task_set_up_attribute.h"
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
task_system_set_up_dta_t task_system_set_up_dta = { ST_SET_UP_XX_MAIN, MENU_MAIN_MAX_AUTOS };

/********************** internal functions declaration ***********************/
void mostrar_main(task_set_up_main_t indice_parametro, task_subsystem_dta_t* dta);
void mostrar_max_autos(uint32_t max_autos);
void mostrar_advertencia(uint32_t advertencia);

/********************** internal data definition *****************************/

/********************** external data declaration ****************************/

/********************** external functions definition ************************/
void task_system_set_up_init(void *parameters) {
	task_system_set_up_dta_t 	*p_task_system_dta;
	task_system_st_t	state;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - Task Set up\r\n", GET_NAME(task_system_init));
	LOGGER_LOG("  %s is a Estado set up\r\n", GET_NAME(task_system));

	g_task_system_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_system_cnt), g_task_system_cnt);

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_system_dta = &task_system_set_up_dta;

	/* Print out: Task execution FSM */
	state = p_task_system_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);
}

void task_system_set_up_update(void *parameters) {
	task_system_set_up_dta_t *p_task_system_set_up_dta = &task_system_set_up_dta;
	task_subsystem_dta_t* dta = (task_subsystem_dta_t*) parameters;
	task_set_up_parameters_t* parametros = dta->parametros;
	task_system_ev_t event = dta->dta_event.event;

	switch (p_task_system_set_up_dta->state) {
		case ST_SET_UP_XX_MAIN:
			mostrar_main(p_task_system_set_up_dta->indice_parametro, dta);

			if (EV_SYS_XX_ENTER == event) {
				switch (p_task_system_set_up_dta->indice_parametro) {
					case MENU_MAIN_MAX_AUTOS:
						p_task_system_set_up_dta->state = ST_SET_UP_XX_MAX_AUTOS;
						mostrar_max_autos(dta->max_autos);
						break;

					case MENU_MAIN_ADVERTENCIA:
						p_task_system_set_up_dta->state = ST_SET_UP_XX_ADVENTENCIA;
						mostrar_advertencia(dta->advertencia_autos);
						break;

					case MENU_MAIN_ESCAPE:
						parametros->salir = true;
						break;

					default:
						break;
				}

			} else if (EV_SYS_XX_NEXT == event) {
				p_task_system_set_up_dta->indice_parametro = (p_task_system_set_up_dta->indice_parametro + 1) % MENU_MAIN_MAX;
				mostrar_main(p_task_system_set_up_dta->indice_parametro, dta);
			}
			break;

		case ST_SET_UP_XX_MAX_AUTOS:
			mostrar_max_autos(dta->max_autos);

			if (EV_SYS_XX_ENTER == event) {
				p_task_system_set_up_dta->state = ST_SET_UP_XX_MAIN;
				mostrar_main(p_task_system_set_up_dta->indice_parametro, dta);

			} else if (EV_SYS_XX_NEXT == event) {
				dta->max_autos++;
				if (dta->max_autos >= parametros->default_max_autos) {
					dta->max_autos = dta->advertencia_autos + 1;
				}
				mostrar_max_autos(dta->max_autos);
			}

			break;

		case ST_SET_UP_XX_ADVENTENCIA:
			mostrar_advertencia(dta->advertencia_autos);

			if (EV_SYS_XX_ENTER == event) {
				p_task_system_set_up_dta->state = ST_SET_UP_XX_MAIN;
				mostrar_main(p_task_system_set_up_dta->indice_parametro, dta);

			} else if (EV_SYS_XX_NEXT == event) {
				dta->advertencia_autos++;
				if (dta->advertencia_autos >= dta->max_autos) {
					dta->advertencia_autos = 1;
				}
				mostrar_advertencia(dta->advertencia_autos);
			}

			break;

	}
}

void mostrar_main(task_set_up_main_t indice_parametro, task_subsystem_dta_t* dta) {
	put_event_task_display(0, 0, " Main:          ");
	put_event_task_display(0, 1, " >              ");

	char text[MAX_TEXT];
	switch (indice_parametro) {
		case MENU_MAIN_MAX_AUTOS:
			put_event_task_display(3, 1, "MaxAutos: 00 ");
			snprintf(text, sizeof(text), "%lu", dta->max_autos);
			put_event_task_display((dta->max_autos > 9) ? 12 : 14, 1, text);
			break;

		case MENU_MAIN_ADVERTENCIA:
			put_event_task_display(3, 1, "Aviso:    00 ");
			snprintf(text, sizeof(text), "%lu", dta->advertencia_autos);
			put_event_task_display((dta->advertencia_autos > 9) ? 13 : 14, 1, text);
			break;

		case MENU_MAIN_ESCAPE:
			put_event_task_display(3, 1, "Escape       ");
			break;

		default:
			break;
	}
}

void mostrar_max_autos(uint32_t max_autos) {
	put_event_task_display(0, 0, " Max autos:     ");
	put_event_task_display(0, 1, " >              ");

	char text[MAX_TEXT];
	snprintf(text, sizeof(text), "%lu", max_autos);
	put_event_task_display(3, 1, text);

}

void mostrar_advertencia(uint32_t advertencia) {
	put_event_task_display(0, 0, " Aviso:         ");
	put_event_task_display(0, 1, " >              ");

	char text[MAX_TEXT];
	snprintf(text, sizeof(text), "%lu", advertencia);
	put_event_task_display(3, 1, text);
}


