uint8 cell_break # 0:normal;other:Undervoltage core index(0x01-0x1F)
uint8 self_check_error # enum-type: DJISmartBatterySelfCheck
uint8 battery_closed_reason # enum-type: DJI_BETTERY_CLOSED_REASON
uint8 bat_s_o_h_state # enum-type: DJISmartBatterySohState*/
uint8 max_cycle_limit # APP:cycle_limit*10*/
uint8 battery_communication_abnormal 
uint8 has_cell_break 
uint8 heat_state # enum-type: DJISmartBatteryHeatState