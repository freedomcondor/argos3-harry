-- Use Shift + Click to select a robot
-- When a robot is selected, its variables appear in this editor

-- Use Ctrl + Click (Cmd + Click on Mac) to move a selected robot to a different location



-- Put your global variables here



--[[ This function is executed every time you press the 'execute' button ]]
function init()
	reset()
end



--[[ This function is executed at each time step
     It must contain the logic of your controller ]]
function step()
	log(robot.id, ": speed = " ..
		 string.format("%.2f", robot.joints.base_wheel_left.encoder) .. ", " ..
		 string.format("%.2f", robot.joints.base_wheel_right.encoder))
end



--[[ This function is executed every time you press the 'reset'
     button in the GUI. It is supposed to restore the state
     of the controller to whatever it was right after init() was
     called. The state of sensors and actuators is reset
     automatically by ARGoS. ]]
function reset()
	robot.joints.base_wheel_left.set_target(3)
	robot.joints.base_wheel_right.set_target(-1)
end



--[[ This function is executed only once, when the robot is removed
     from the simulation ]]
function destroy()
   -- put your code here
end
