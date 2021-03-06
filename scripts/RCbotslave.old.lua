function listen()
	local senderId, message, protocol = rednet.receive()
end

running = true

rednet.open("left")

while running do
	listen()
	while message == "forward" do
		turtle.forward()
		listen()
		if message == "stop" then
			return
		end
	end

	while message == "back" do
		turtle.back()
		listen()
		if message == "stop" then
			return
		end
	end

	while message == "left" do
		turtle.turnLeft()
		listen()
		if message == "stop" then
			return
		end
	end

	while message == "right" do
		turtle.turnRight()
		listen()
		if message == "stop" then
			return
		end
	end
end
