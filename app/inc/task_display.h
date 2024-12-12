/*
 * task_display.h
 *
 *  Created on: Dec 12, 2024
 *      Author: usuario
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
extern uint32_t g_task_display_cnt;
extern volatile uint32_t g_task_display_tick_cnt;

/********************** external functions declaration ***********************/
extern void task_display_init(void *parameters);
extern void task_display_update(void *parameters);

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif


#endif /* INC_TASK_DISPLAY_H_ */
