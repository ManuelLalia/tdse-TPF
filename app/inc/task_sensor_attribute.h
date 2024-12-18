#ifndef TASK_INC_TASK_SENSOR_ATTRIBUTE_H_
#define TASK_INC_TASK_SENSOR_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/
#include "task_system_attribute.h"

/********************** macros ***********************************************/
#define MAX_SIGNALS 4

/********************** typedef **********************************************/
/* Events to excite Task Sensor */
typedef enum task_sensor_ev {
	EV_BTN_XX_UP,
	EV_BTN_XX_DOWN,
} task_sensor_ev_t;

/* States of Task Sensor */
typedef enum task_sensor_st {
	ST_BTN_XX_UP,
	ST_BTN_XX_FALLING,
	ST_BTN_XX_DOWN,
	ST_BTN_XX_RISING,
} task_sensor_st_t;

/* Identifier of Task Sensor */
typedef enum task_sensor_id {
	ID_BTN_INGRESAR,
	ID_BTN_EGRESO,
	ID_BTN_ACTIVAR,
	ID_BTN_CONFIGURACION,
	ID_BTN_NEXT,
	ID_BTN_ENTER,
	ID_DSW_DESACTIVAR,
	ID_DSW_VACIAR,
} task_sensor_id_t;

typedef struct {
	task_sensor_id_t	identifier;
	GPIO_TypeDef *		gpio_port;
	uint16_t			pin;
	GPIO_PinState		pressed;
	uint32_t			tick_max;
	task_system_ev_t	signals_up[MAX_SIGNALS];
	uint32_t			cant_signals_up;
	task_system_ev_t	signals_down[MAX_SIGNALS];
	uint32_t			cant_signals_down;
} task_sensor_cfg_t;

typedef struct {
	uint32_t			tick;
	task_sensor_st_t	state;
	task_sensor_ev_t	event;
} task_sensor_dta_t;

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* TASK_INC_TASK_SENSOR_ATTRIBUTE_H_ */

/********************** end of file ******************************************/
