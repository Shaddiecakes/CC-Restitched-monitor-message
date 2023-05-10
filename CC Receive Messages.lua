io.write("What side of the computer is the modem on?\n")
local mSide = io.read() -- If you want to skip this, remove these two lines and switch mSide with the side the modem is on. (Top, left, right, etc...)
rednet.open(mSide)

io.write("What side is the monitor on?\n")
local sSide = io.read() -- If you want to skip this, do the same as before but replace the sSide with the monitor side. (Top, left, right, etc...)
term.redirect(peripheral.wrap(sSide))

while true do
  local sender, message, protocol = rednet.receive()
  io.write(message)
  end