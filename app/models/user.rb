class User < ApplicationRecord
  include Intractable

  def self.find_or_create_by_telegram(from)
    if user = find_by_telegram_id(from['id'])
      user
    else
      user_params = {
        telegram_id: from['id'],
        telegram_username: from['username'],
        current_screen: 'username'
      }
      create user_params
    end
  end

  def receive(message)
    status = send current_screen, message
    next_screen = ScreenService.get_next_screen current_screen, status
    update current_screen: next_screen
  end

  def reply
    ScreenService.get_message(current_screen)
  end
end
