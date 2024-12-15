/*
 * task_set_up_attribute.h
 *
 *  Created on: Dec 14, 2024
 *      Author: Grupo 2
 */

#ifndef INC_TASK_SET_UP_ATTRIBUTE_H_
#define INC_TASK_SET_UP_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/
/* State of Task System */
typedef enum task_set_up_st {
	ST_SET_UP_XX_MAIN,
	ST_SET_UP_XX_MAX_AUTOS,
	ST_SET_UP_XX_ADVENTENCIA,
} task_set_up_st_t;

typedef enum {
	MENU_MAIN_MAX_AUTOS,
	MENU_MAIN_ADVERTENCIA,
	MENU_MAIN_ESCAPE,

	MENU_MAIN_MAX,
} task_set_up_main_t;

typedef struct {
	bool 		salir;
	uint32_t 	default_max_autos;
} task_set_up_parameters_t;

typedef struct {
	task_set_up_st_t		state;
	task_set_up_main_t		indice_parametro;
} task_system_set_up_dta_t;

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* INC_TASK_SET_UP_ATTRIBUTE_H_ */
