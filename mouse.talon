<user.screen_step> <user.screen_step> move:
    mouse_move(screen_step_1, screen_step_2)
#commands still in my head from dragon    
(move | left | right) <user.screen_step> <user.screen_step>:
            mouse_move(screen_step_1, screen_step_2)    
<user.screen_step> <user.screen_step> (click | touch):
    mouse_move(screen_step_1, screen_step_2)
    mouse_click(0)
<user.screen_step> <user.screen_step> righty:
    mouse_move(screen_step_1, screen_step_2)
    mouse_click(1)
taskbar <user.screen_step>:
    mouse_move(screen_step, 1035)
    mouse_click(0)
taskbar right <user.screen_step>:
        mouse_move(screen_step, 1035)
        mouse_click(0)
taskbar <user.screen_step> <user.number_signed_small>:
    mouse_move(screen_step, 1030)
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    adjustment= number_signed_small * 5
    mouse_move(position_x + adjustment, position_y)
    mouse_click(0)                
menu <user.screen_step>:
    mouse_move(screen_step, 80)
    mouse_click(0)                          
ribbon <user.screen_step>:
    mouse_move(screen_step, 80)
    mouse_click(0)                          
mouse left <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x - number_signed_small, position_y)
mouse right <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x + number_signed_small, position_y)
mouse up <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x , position_y - number_signed_small)
mouse down <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x, position_y + number_signed_small)
lower left <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x - number_signed_small, position_y + number_signed_small)
lower right <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x + number_signed_small, position_y + number_signed_small)
upper left <user.number_signed_small>:
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x - number_signed_small, position_y - number_signed_small)    
upper right <user.number_signed_small>:    
    position_x=user.query_mouse_position_x()
    position_y=user.query_mouse_position_y()
    mouse_move(position_x + number_signed_small, position_y - number_signed_small)        
left <user.number_signed_small> (click | touch):
        position_x=user.query_mouse_position_x()
        position_y=user.query_mouse_position_y()
        mouse_move(position_x - number_signed_small, position_y)
        mouse_click(0)
right <user.number_signed_small> (click | touch):
        position_x=user.query_mouse_position_x()
        position_y=user.query_mouse_position_y()
        mouse_move(position_x + number_signed_small, position_y)
        mouse_click(0)
up <user.number_signed_small> (click | touch):
        position_x=user.query_mouse_position_x()
        position_y=user.query_mouse_position_y()
        mouse_move(position_x , position_y - number_signed_small)
        mouse_click(0)
down <user.number_signed_small> (click | touch):
        position_x=user.query_mouse_position_x()
        position_y=user.query_mouse_position_y()
        mouse_move(position_x , position_y + number_signed_small)
        mouse_click(0)
(arrow) | (mouse) down: user.mouse_drag(0)        
left mouse down: user.mouse_drag(0)
right mouse down: user.mouse_drag(1)
command show cursor: 
    user.mouse_show_cursor()
    #this does not seem to work even though it's been enabled

    