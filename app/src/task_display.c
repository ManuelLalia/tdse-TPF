/*
 * task_display.c
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
#include "display.h"
#include "task_display.h"
#include "task_display_interface.h"

/********************** macros and definitions *******************************/

/********************** internal data declaration ****************************/

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/

/********************** external data declaration ****************************/
volatile bool g_task_display_tick_update;

/********************** external functions definition ************************/
void task_display_init(void *parameters) {
	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - Task Display\r\n", GET_NAME(task_display_init));
	LOGGER_LOG("  %s is a LCD Display\r\n", GET_NAME(task_display));

	init_queue_event_task_display();
	displayInit();
}

void task_display_update(void *parameters) {
	bool b_time_update_required = false;
	__asm("CPSID i");	/* disable interrupts*/
	if (g_task_display_tick_update) {
		g_task_display_tick_update = false;
		b_time_update_required = true;
	}
	__asm("CPSIE i");	/* enable interrupts*/

	if (b_time_update_required && any_event_task_display()) {
		info_display_t info_display = get_event_task_display();

		displayCharPositionWrite(0, 0);
		displayStringWrite(info_display.linea1);

		displayCharPositionWrite(0, 1);
		displayStringWrite(info_display.linea2);
	}
}

