# CC-Restitched-monitor-message
Uses two computers to send and receive messages and display them on a monitor.
These files go on the sending and receiving end of the computers respectively. This allows the user to broadcast from any computer. It also allows the user to receive any broadcasted messages in range and add them to a screen. I modified it from the version I initially made to make it easier for those who don't know or want to use lua.
Within the code are some options to allow to skip some of the setting up so that you only need to do it once.
An example of what the code is saying is replacing:

io.write("What side of the computer is the modem on?\n")
local mSide = io.read() -- If you want to skip this, remove these two lines and switch mSide with the side the modem is on. (Top, left, right, etc...)
rednet.open(mSide)

with:

rednet.open("top")
