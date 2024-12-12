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
	EV_SYS_XX_IDLE,
	EV_SYS_XX_ACTIVE,
	EV_SYS_XX_TMP_SENSOR,
	EV_SYS_XX_TMP_INTERNO,
} task_system_ev_t;

/* State of Task System */
typedef enum task_system_st {
	ST_SYS_XX_IDLE,
	ST_SYS_XX_ACTIVE
} task_system_st_t;

typedef struct {
	uint32_t			tick;
	task_system_st_t	state;
	task_system_ev_t	event;
	bool				flag;
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
