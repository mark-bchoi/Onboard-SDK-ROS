#contant for actionAssociatedType
uint8 DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPESIMULTANEOUSLY = 1 # The trigger starts simultaneously with the trigger that is associated.
uint8 DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEAFTERFINISED = 2 # The trigger starts after the trigger associated has finished.
uint8 DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEUNKNOWN = 255 # Unkown timing type.

uint8 action_associated_type # The type of assciate trigger.
uint8 waiting_time # Waiting time in seconds after ActionTrigger starts.
uint16 action_id_associated # Associated action ID.