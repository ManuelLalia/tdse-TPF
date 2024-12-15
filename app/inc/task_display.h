/*
 * task_display.h
 *
 *  Created on: Dec 12, 2024
 *      Author: Grupo 2
 */

#ifndef INC_TASK_DISPLAY_H_
#define INC_TASK_DISPLAY_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/

/********************** external data declaration ****************************/
extern volatile bool g_task_display_tick_update;

/********************** external functions declaration ***********************/
extern void task_display_init(void *parameters);
extern void task_display_update(void *parameters);

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif


#endif /* INC_TASK_DISPLAY_H_ */
