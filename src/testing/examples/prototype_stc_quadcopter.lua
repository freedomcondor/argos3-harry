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
   -- randomly send data
   if robot.random.uniform_int(1,10) < 5 then
      robot.radios["radio_0"].tx_data({1,2,3})
   end

   -- report camera readings
	if #robot.cameras.fixed_camera.led_detector > 0 then
		logerr("-- " .. robot.id .. " detections --")
    for i, detection in ipairs(robot.cameras.fixed_camera.led_detector) do
       logerr(string.format("(%.0f, %.0f, %.0f) at (%.0f, %.0f)",
                            detection.color.red,
                            detection.color.green,
                            detection.color.blue,  
                            detection.center.x,
                            detection.center.y))
    end
	end
end



--[[ This function is executed every time you press the 'reset'
     button in the GUI. It is supposed to restore the state
     of the controller to whatever it was right after init() was
     called. The state of sensors and actuators is reset
     automatically by ARGoS. ]]
function reset()
   --robot.leds.set_all_colors("black")
   robot.leds.set_single_color(1,"blue")
   robot.leds.set_single_color(2,"red")
   robot.leds.set_single_color(3,"green")
   robot.leds.set_single_color(4,"yellow")
end



--[[ This function is executed only once, when the robot is removed
     from the simulation ]]
function destroy()
   -- put your code here
end
