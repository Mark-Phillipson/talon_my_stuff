from talon import ctrl, actions, Module
import time

mod = Module()

@mod.action_class
class Actions:
    def mouse_testing(x: int, y: int):
        """My custom mouse testing function"""
        actions.user.smooth_drag(x, y, 500, 500, delay=0.5, smoothness=0.5)

    def smooth_drag(start_x: int, start_y: int, end_x: int, end_y: int, delay: float = 0.05, smoothness: float = 0.2):
        """Drags the mouse smoothly from start to end."""
        ctrl.mouse_move(start_x, start_y)        # Move to starting position
        actions.sleep(delay)                     # Apply delay
        #ctrl.mouse_click(button=0, down=True)    # Press mouse button
        actions.mouse_drag(0)
        actions.sleep(delay)                     # Apply delay

        # Calculate the number of steps for smooth movement
        steps = int(smoothness * 100)
        for i in range(steps):
            x = start_x + (end_x - start_x) * (i / steps)
            y = start_y + (end_y - start_y) * (i / steps)
            ctrl.mouse_move(x, y)
            time.sleep(smoothness / steps)

        ctrl.mouse_move(end_x, end_y)            # Ensure final position
        actions.sleep(delay)                     # Apply delay
        actions.user.mouse_drag_end()      # Release mouse button