/*
 * task_display_interface.c
 *
 *  Created on: Dec 14, 2024
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
#include "task_display_interface.h"

/********************** macros and definitions *******************************/

/********************** internal data declaration ****************************/
info_display_t info_display;

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/

/********************** external data declaration ****************************/

/********************** external functions definition ************************/
void init_queue_event_task_display(void) {
	for (uint32_t i = 0; i < MAX_TEXT; i++) {
		info_display.linea1[i] = ' ';
		info_display.linea2[i] = ' ';
	}
}

void put_event_task_display(uint8_t pos_x, uint8_t pos_y, char* texto) {
	if (pos_y >= 2) return;

	char* linea = info_display.linea1;
	if (pos_y == 1) linea = info_display.linea2;

	for (uint8_t i = pos_x; i < MAX_TEXT && *texto != '\0'; i++, texto++) {
		linea[i] = *texto;
	}
}

info_display_t get_event_task_display(void) {
	return info_display;
}
