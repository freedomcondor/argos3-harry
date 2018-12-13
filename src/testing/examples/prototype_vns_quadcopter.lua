-- Put your global variables here

require("debugger")


--[[ This function is executed every time you press the 'execute' button ]]
function init()
	reset()
end

--[[ This function is executed at each time step
     It must contain the logic of your controller ]]
function step()
	local tags = robot.cameras.fixed_camera.tag_detector
	local pos, dir
	if #tags ~= 0 then
		pos, dir = getRobot(tags[1])
		local sign = 1
		local number = dir
		if dir < 0 then sign = 2 dir = -dir end
		robot.radios["radio_0"].tx_data({sign, dir})
	end
end



--[[ This function is executed every time you press the 'reset'
     button in the GUI. It is supposed to restore the state
     of the controller to whatever it was right after init() was
     called. The state of sensors and actuators is reset
     automatically by ARGoS. ]]
function reset()
	--set_velocity(0.1,0.1,0.5)
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

------------------------------------------------------------------
function getRobot(tag)
	local deg = calcRobotDir(tag.corners)
	local pos = {}
	pos.x = tag.center.x - 320
	pos.y = tag.center.y - 240
	pos.y = -pos.y 					-- coordination system transform
	return pos, deg
end
function calcRobotDir(corners)
	local frontx = (corners[1].x + corners[2].x) / 2
	local fronty = (corners[1].y + corners[2].y) / 2
	local backx = (corners[3].x + corners[4].x) / 2
	local backy = (corners[3].y + corners[4].y) / 2
	local dirx = frontx - backx
	local diry = -(fronty - backy)	-- coordination system transform
	local deg = math.atan(diry / dirx) * 180 / 3.1415926
	if dirx < 0 then
		deg = deg + 180
	end
	deg = deg - 90
	return deg
end
