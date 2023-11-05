move [to] <user.screen_step> <user.screen_step>:
    mouse_move(screen_step_1, screen_step_2)
click [at] <user.screen_step> <user.screen_step>:
    mouse_move(screen_step_1, screen_step_2)
    mouse_click(0)
righty [at] <user.screen_step> <user.screen_step>:
    mouse_move(screen_step_1, screen_step_2)
    mouse_click(1)
taskbar <user.screen_step>:
    mouse_move(screen_step, 1030)
    mouse_click(0)
taskbar <user.screen_step> <user.number_signed_small>:
    mouse_move(screen_step, 1030)
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x + user.number_signed_small, position_y)
    mouse_click(0)                
(stripe) | (ribbon) | (menu) <user.screen_step>:
    mouse_move(screen_step, 80)
    mouse_click(0)                          
mouse left <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x - user.number_signed_small, position_y)
    mouse_click(0)
mouse right <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x + user.number_signed_small, position_y)
    mouse_click(0)
mouse up <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x , position_y - user.number_signed_small)
    mouse_click(0)
mouse down <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x , position_y + user.number_signed_small)
    mouse_click(0)
mouse lower left <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x - user.number_signed_small, position_y + user.number_signed_small)
    mouse_click(0)
mouse lower right <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x + user.number_signed_small, position_y + user.number_signed_small)
    mouse_click(0)
mouse upper left <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x - user.number_signed_small, position_y - user.number_signed_small)    
    mouse_click(0)
mouse upper right <user.number_signed_small>:    
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x + user.number_signed_small, position_y - user.number_signed_small)        
    mouse_click(0)