-- Put your global variables here



--[[ This function is executed every time you press the 'execute' button ]]
function init()
	reset()
end

--[[ This function is executed at each time step
     It must contain the logic of your controller ]]
function step()
end



--[[ This function is executed every time you press the 'reset'
     button in the GUI. It is supposed to restore the state
     of the controller to whatever it was right after init() was
     called. The state of sensors and actuators is reset
     automatically by ARGoS. ]]
function reset()
    set_velocity(0.1,0.1,0.5)
end



--[[ This function is executed only once, when the robot is removed
     from the simulation ]]
function destroy()
   -- put your code here
end

function set_velocity(x,y,theta)
    robot.joints.axis0_axis1.set_target(x)
    robot.joints.axis1_axis2.set_target(y)
    robot.joints.axis2_body.set_target(theta)
end
