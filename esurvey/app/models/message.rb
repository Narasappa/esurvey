class Message < ActiveRecord::Base
  attr_accessible :body


  after_create  :notify 
 
  private
 
  def notify
    Notification.create(event: "New Notification")
  end

  
end
