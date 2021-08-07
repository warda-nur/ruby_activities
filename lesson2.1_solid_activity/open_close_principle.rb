class Text
    def initialize(user, message)
      @user = user
      @message = message
    end

    def parse(chat)
      case Chat.extname(chat).downcase
      when "user1"
        User1Parser.new.parse(chat)
      when "user2"
        User2Parser.new.parse(chat)
      when "user3"
        User3Parser.new.parse(chat)
      else
        raise NotImplementedError, "Chat user is unknow #{Chat.extname(chat)}"
      end

      @user.save
      @message.save
    end
  end

  class  User1Parser < Text
    def parse(chat)
    end
  end

  class User2Parser < Text
    def parse(chat)
    end
  end

  class User3Parser < Text
    def parse(chat)
    end
  end

