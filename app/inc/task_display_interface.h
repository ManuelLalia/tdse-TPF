/*
 * task_display_interface.h
 *
 *  Created on: Dec 12, 2024
 *      Author: usuario
 */

#ifndef INC_TASK_DISPLAY_INTERFACE_H_
#define INC_TASK_DISPLAY_INTERFACE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/
const int MAX_TEXT = 16;

/********************** typedef **********************************************/
typedef struct info_display {
	uint8_t pos_x;
	uint8_t pos_y;
	char texto[MAX_TEXT];
} info_display_t;

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/
extern void init_queue_event_task_display(void);
extern void put_event_task_display(info_display_t info);
extern info_display_t get_event_task_display(void);
extern bool any_event_task_display(void);

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* INC_TASK_DISPLAY_INTERFACE_H_ */
