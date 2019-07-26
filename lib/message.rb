class Message
  attr_reader :message, :shift, :alphabet

  def initialize(message, shift)
    @message = message
    @shift = shift
    @alphabet = ('a'..'z').to_a << " "
  end
end
