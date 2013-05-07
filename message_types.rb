class Message
  attr_accessor :msg

  def initialize msg
    @msg = msg
  end
end

class QueryMsg < Message
end

class ReplyMsg < Message
end
