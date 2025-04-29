uint16 remain_fly_time # remain fly time(s)
uint16 go_home_need_time # Time required for the gohome flight (s)
uint16 land_need_time # Time required for the land flight (s).max value:100*/
uint16 go_home_need_capacity # Capacity required for the gohome flight (%).max value:100*/
uint16 land_need_capacity # Capacity required for the land flight (%).max value:100*/
float32 safe_fly_radius # Safe flight area radius (m)*/
float32 capacity_consume_speed # (mAh/sec)*/
BatteryState battery_state 
uint8 go_home_count_down_state # Countdown status of smart battery gohome
# 0/2:not in gohome state
# 1  :in gohome state
#
uint8 gohome_count_downvalue # uint:s.max value:10
uint16 voltage # mv
uint8 battery_capacity_percentage # uint:%.max value:100
uint8 low_battery_alarm_threshold 
uint8 low_battery_alarm_enable 
uint8 serious_low_battery_alarm_threshold 
uint8 serious_low_battery_alarm_enable 