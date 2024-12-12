#ifndef TASK_INC_TASK_ACTUATOR_INTERFACE_H_
#define TASK_INC_TASK_ACTUATOR_INTERFACE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/********************** typedef **********************************************/

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/
extern void put_event_task_actuator(task_actuator_ev_t event, task_actuator_id_t identifier);

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* TASK_INC_TASK_ACTUATOR_INTERFACE_H_ */

/********************** end of file ******************************************/
