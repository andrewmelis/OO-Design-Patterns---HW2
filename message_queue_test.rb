require './message_handler.rb'
require './message_queue.rb'

h = MsgHandler.instance
mq = MessageQueue.new

h.send mq, "hey check out this awesome message queue"
h.send mq, "it's built in to ruby"

h.receive mq

h.send mq, "gotta study for the cloud midterm"
h.send mq, "don't forget cloud homework as well"

h.receive mq
h.receive mq
h.receive mq

#should get empty message here
h.receive mq
