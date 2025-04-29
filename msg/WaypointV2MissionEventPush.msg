uint8 event 
uint32 f_c_timestamp 
#ID:0x01
uint8 interrupt_reason #0x00:rc triggered interrupt

#ID:0x02
uint8 recover_process #0x00:finished pause recover

#ID:0x03
uint8 finish_reason #0x00:finished normally; 0x10:External user trigger ended successfully

#ID:0x10
uint16 waypoint_index 

#ID:0x11
uint8 current_mission_exec_num 
uint8 finished_all_exec_num #0:not finished; 1:finished all exec num