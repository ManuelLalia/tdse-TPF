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
bool need_updated;

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/

/********************** external data declaration ****************************/

/********************** external functions definition ************************/
void init_queue_event_task_display(void) {
	for (uint32_t i = 0; i < MAX_TEXT - 1; i++) {
		info_display.linea1[i] = ' ';
		info_display.linea2[i] = ' ';
	}
	info_display.linea1[MAX_TEXT - 1] = '\0';
	info_display.linea2[MAX_TEXT - 1] = '\0';

	need_updated = true;
}

void put_event_task_display(uint8_t pos_x, uint8_t pos_y, char* texto) {
	if (pos_y >= 2) return;

	need_updated = true;

	char* linea = info_display.linea1;
	if (pos_y == 1) linea = info_display.linea2;

	for (uint8_t i = pos_x; i < MAX_TEXT - 1 && *texto != '\0'; i++, texto++) {
		linea[i] = *texto;
	}
}

info_display_t get_event_task_display(void) {
	need_updated = false;
	return info_display;
}

bool any_event_task_display(void) {
	return need_updated;
}
