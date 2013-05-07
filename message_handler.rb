require 'singleton'
require './message_types.rb'

class MsgHandler
  include Singleton

  def send (queue, msg)
    query = QueryMsg.new msg
    puts "message sent: '#{query.msg}'"
    queue.push query
  end
  
  def receive queue
    if queue.empty?
      puts "nothing left in the queue! Add some more stuff!"
      return
    end
    reply = ReplyMsg.new queue.pop.msg
    puts "message received: '#{reply.msg}'"
  end

end

  
