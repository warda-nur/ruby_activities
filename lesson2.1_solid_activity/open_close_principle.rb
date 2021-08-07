class Text
    def initialize(user, message)
      @user = user
      @message = message
    #   raise NotImplementedError
    end
    
  class EmailSender < Sender
    def send(user, message)
      # implementation for Email
    end
  end
  
  class SmsSender < Sender
    def send(user, message)
      # implementation for SMS
    end
  end
end

sender = NotificationSender.new
sender.send(user, "Hello World", SmsSender.new)