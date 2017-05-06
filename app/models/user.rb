class User < ApplicationRecord
  def self.find_or_create_by_telegram(from)
    if user = find_by_telegram_id(from['id'])
      user
    else
      user_params = {
        telegram_id: from['id'],
        telegram_username: from['username'],
        current_screen: 'start'
      }
      create user_params
    end
  end
end
