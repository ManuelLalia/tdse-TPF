/*
 * task_temperatura.h
 *
 *  Created on: Dec 12, 2024
 *      Author: usuario
 */

#ifndef INC_TASK_TEMPERATURA_H_
#define INC_TASK_TEMPERATURA_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/

/********************** external data declaration ****************************/
extern uint32_t g_task_temperatura_cnt;
extern volatile uint32_t g_task_temperatura_tick_cnt;

/********************** external functions declaration ***********************/
void task_temperatura_init(void *parameters);
void task_temperatura_update(void *parameters);

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* INC_TASK_TEMPERATURA_H_ */
