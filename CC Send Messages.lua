io.write("What side of the computer is the modem on?\n")
local mSide = io.read() -- If you want to skip this, remove these two lines and switch mSide with the side the modem is on. (Top, left, right, etc...)
rednet.open(mSide)
local message = ""

io.write("Hello. Would you like to broadcast a message?\n 1 = yes\n 2 = no\n")

message = tonumber(io.read())

while (message <1 or message > 2) do
  io.write ("Input invalid. Type either 1 or 2.\n")
  message = tonumber(io.read())
end

if (message == 1) then
  io.write ("You may now send messages. \nTo stop sending messages type exit.\n")
  while (message ~= "exit") do
    message = io.read()
    rednet.broadcast(message)
    rednet.broadcast("\n")
  end
end

if (message == 2) then
  io.write("Nothing was done. \nThank you.") -- In case you accidentally start it up and don't want to change anything.
  end