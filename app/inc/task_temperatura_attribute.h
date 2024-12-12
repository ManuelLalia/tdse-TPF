/*
 * task_temperatura_attribute.h
 *
 *  Created on: Dec 12, 2024
 *      Author: usuario
 */

#ifndef INC_TASK_TEMPERATURA_ATTRIBUTE_H_
#define INC_TASK_TEMPERATURA_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/
/* Events to excite Task Temperatura */
typedef enum task_temperatura_ev {
	EV_TMP_XX_UP,
	EV_TMP_XX_DOWN
} task_temperatura_ev_t;

/* States of Task Temperatura */
typedef enum task_temperatura_st {
	ST_TMP_XX_UP,
	ST_TMP_XX_FALLING,
	ST_TMP_XX_DOWN,
	ST_TMP_XX_RISING
} task_temperatura_st_t;

/* Identifier of Task Temperatura */
typedef enum task_temperatura_id {
	ID_TMP_SENSOR,
	ID_TMP_MICRO,
} task_temperatura_id_t;

typedef struct {
	task_temperatura_id_t	identifier;
} task_temperatura_cfg_t;

typedef struct {
	uint32_t				tick;
	task_temperatura_st_t	state;
	task_temperatura_ev_t	event;
} task_temperatura_dta_t;

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* INC_TASK_TEMPERATURA_ATTRIBUTE_H_ */
