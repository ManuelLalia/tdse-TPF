/*
 * task_temperatura_attribute.h
 *
 *  Created on: Dec 12, 2024
 *      Author: Grupo 2
 */

#ifndef INC_TASK_TEMPERATURA_ATTRIBUTE_H_
#define INC_TASK_TEMPERATURA_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/
#include "task_system_attribute.h"

/********************** macros ***********************************************/

/********************** typedef **********************************************/
typedef struct {
	task_system_ev_t		event;
	ADC_HandleTypeDef* 		hadc;
} task_temperatura_cfg_t;

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* INC_TASK_TEMPERATURA_ATTRIBUTE_H_ */
