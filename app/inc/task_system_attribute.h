#ifndef TASK_INC_TASK_SYSTEM_ATTRIBUTE_H_
#define TASK_INC_TASK_SYSTEM_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/

/* Events to excite Task System */
typedef enum task_system_ev {
	/* 0*/ EV_SYS_XX_ACTIVAR,
	/* 1*/ EV_SYS_XX_DESACTIVAR_UP,
	/* 2*/ EV_SYS_XX_DESACTIVAR_DOWN,
	/* 3*/ EV_SYS_XX_INGRESO,
	/* 4*/ EV_SYS_XX_EGRESO,
	/* 5*/ EV_SYS_XX_VACIAR_UP,
	/* 6*/ EV_SYS_XX_VACIAR_DOWN,
	/* 7*/ EV_SYS_XX_CONFIGURAR,
	/* 8*/ EV_SYS_XX_ENTER,
	/* 9*/ EV_SYS_XX_NEXT,
	/*10*/ EV_SYS_XX_TMP_SENSOR,
	/*11*/ EV_SYS_XX_TMP_INTERNO,
} task_system_ev_t;

/* State of Task System */
typedef enum task_system_st {
	ST_SYS_XX_DESACTIVADO,
	ST_SYS_XX_NORMAL,
	ST_SYS_XX_SET_UP,
} task_system_st_t;

typedef struct {
	task_system_ev_t event;
	uint16_t value;
} dta_event_sensor_t;

typedef struct {
	uint32_t 				max_autos;
	uint32_t 				advertencia_autos;
	dta_event_sensor_t		dta_event;
	void*					parametros;
} task_subsystem_dta_t;

typedef struct {
	uint32_t				tick;
	task_system_st_t		state;
	bool 					bloqueado;
	bool 					activo;
	task_subsystem_dta_t	dta_subsystem;
} task_system_dta_t;

/********************** external data declaration ****************************/
extern task_system_dta_t task_system_dta;

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* TASK_INC_TASK_SYSTEM_ATTRIBUTE_H_ */

/********************** end of file ******************************************/
