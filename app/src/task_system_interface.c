/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_system_attribute.h"

/********************** macros and definitions *******************************/
#define MAX_EVENTS		(255)

/********************** internal data declaration ****************************/

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
typedef struct {
	uint32_t	head;
	uint32_t	tail;
	uint32_t	count;
	dta_event_sensor_t	queue[MAX_EVENTS];
} queue_task_a;

/********************** external data declaration ****************************/

/********************** external functions definition ************************/
void init_queue_event_task_system(void) {
	queue_task_a.head = 0;
	queue_task_a.tail = 0;
	queue_task_a.count = 0;
}

void put_event_task_system(task_system_ev_t event) {
	// Puede pasarsele un valor random ya que no se va a usar
	put_event_tmp_task_system(event, 0);
}

void put_event_tmp_task_system(task_system_ev_t event, uint16_t value) {
	queue_task_a.count++;

	queue_task_a.queue[queue_task_a.head++].event = event;
	queue_task_a.queue[queue_task_a.head++].value = value;

	if (MAX_EVENTS == queue_task_a.head)
		queue_task_a.head = 0;
}

dta_event_sensor_t get_event_task_system(void) {
	queue_task_a.count--;
	dta_event_sensor_t event = queue_task_a.queue[queue_task_a.tail];
	queue_task_a.tail++;

	if (MAX_EVENTS == queue_task_a.tail)
		queue_task_a.tail = 0;

	return event;
}

bool any_event_task_system(void) {
  return (queue_task_a.head != queue_task_a.tail);
}

/********************** end of file ******************************************/
