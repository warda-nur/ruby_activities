class Newsperson
  def broadcast(news, platform)
    platform.new.broadcast(news)
  end
end 

class Newspaper
  def broadcast(news)
    do_something_with news
  end
end
class Television
  def broadcast(news)
    live_broadcast news
  end
end 

warda = Newsperson.new
warda.broadcast("Breaking news!", Newspaper) 
warda.broadcast("Breaking news!", Television) 
