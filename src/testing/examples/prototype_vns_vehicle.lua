-- Use Shift + Click to select a robot
-- When a robot is selected, its variables appear in this editor

-- Use Ctrl + Click (Cmd + Click on Mac) to move a selected robot to a different location



-- Put your global variables here
-- str = "hi"


--[[ This function is executed every time you press the 'execute' button ]]
function init()
	reset()
end



--[[ This function is executed at each time step
     It must contain the logic of your controller ]]
function step()
--   str = str .. str
--   robot.tags.set_all_payloads(str)
	local rx_data = robot.radios["radio_0"].rx_data
	local deg
	if #rx_data ~= 0 then
		local sign = 1
		if rx_data[1][1] == 2 then sign = -1 end
		deg = sign * rx_data[1][2] 

		local speed = 1
		if deg < 5 and deg > -5 then
			speed = 0.1
		end
		if deg < 2 and deg > -2 then
			speed = 0
		end
		if deg > 0 then
			setSpeed(speed,-speed)
		else if deg < 0 then
			setSpeed(-speed,speed)
		end end
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

-------------------------------------------------------------------
function setSpeed(x,y)
	robot.joints.base_wheel_left.set_target(x)
	robot.joints.base_wheel_right.set_target(-y)
end
