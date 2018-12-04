-- Use Shift + Click to select a robot
-- When a robot is selected, its variables appear in this editor

-- Use Ctrl + Click (Cmd + Click on Mac) to move a selected robot to a different location



-- Put your global variables here

local _manipulator_target

--[[ This function is executed every time you press the 'execute' button ]]
function init()
	reset()

	_manipulator_target = 0.082
	set_electromagnet_current(2)
	robot.joints.base_wheel_left.set_target(3)
	robot.joints.base_wheel_right.set_target(-3)
end



--[[ This function is executed at each time step
     It must contain the logic of your controller ]]
function step()
	_manipulator_state = step_manipulator()
	log(robot.id, ": speed = " ..
		 string.format("%.2f", robot.joints.base_wheel_left.encoder) .. ", " ..
		 string.format("%.2f", robot.joints.base_wheel_right.encoder))
	if _manipulator_state == "idle" then
			set_electromagnet_current(-1)
	end
end



--[[ This function is executed every time you press the 'reset'
     button in the GUI. It is supposed to restore the state
     of the controller to whatever it was right after init() was
     called. The state of sensors and actuators is reset
     automatically by ARGoS. ]]
function reset()
end



--[[ This function is executed only once, when the robot is removed
     from the simulation ]]
function destroy()
   -- put your code here
end

--------------------------------------------

function set_electromagnet_current(target)
	robot.magnets.magnet_0.set_current(target)
	robot.magnets.magnet_1.set_current(target)
	robot.magnets.magnet_2.set_current(target)
	robot.magnets.magnet_3.set_current(target)
end

function step_manipulator()
	local position = robot.joints.lifter_vertical_link.encoder
	local set_velocity = robot.joints.lifter_vertical_link.set_target
	local manipulator_speed = 0.03

	log(robot.id, " position  = " .. position)

	if math.abs(_manipulator_target - position) < 0.01 then
		manipulator_speed = math.abs(_manipulator_target - position) * 3
	end

	if math.abs(_manipulator_target - position) > 0.005 then
		if _manipulator_target > position then
			set_velocity(manipulator_speed)
		else
			set_velocity(-manipulator_speed)
		end
		return "active"
	else
		set_velocity(0.0)
		return "idle"
	end
end
