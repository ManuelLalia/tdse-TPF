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
const char *p_task_display 		= "Task Display";
const char *p_task_display_ 	= "LCD Display";

/********************** external data declaration ****************************/

/********************** external functions definition ************************/
void task_display_init(void *parameters) {

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_display_init), p_task_display);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_display), p_task_display_);

	init_queue_event_task_display();
	displayInit();
}

void task_display_update(void *parameters) {
	info_display_t info_display = get_event_task_display();

	displayCharPositionWrite(0, 0);
	displayStringWrite(info_display.linea1);

	displayCharPositionWrite(0, 1);
	displayStringWrite(info_display.linea2);
}

