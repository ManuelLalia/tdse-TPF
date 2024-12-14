/*
 * task_normal_attribute.h
 *
 *  Created on: Dec 14, 2024
 *      Author: usuario
 */

#ifndef INC_TASK_NORMAL_ATTRIBUTE_H_
#define INC_TASK_NORMAL_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/

/* State of Task System */
typedef enum task_system_st {
	ST_NORMAL_XX_VACIO,
	ST_NORMAL_XX_NO_VACIO,
	ST_NORMAL_XX_AVISO,
	ST_NORMAL_XX_LLENO,
} task_system_st_t;

typedef struct {
	task_system_st_t		state;
	uint32_t				cant_autos;
	uint16_t				tmp_sensor;
	uint16_t				tmp_interna;
	bool 					vaciar;
} task_system_normal_dta_t;

/********************** external data declaration ****************************/
extern task_system_dta_t task_system_dta;

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* INC_TASK_NORMAL_ATTRIBUTE_H_ */
