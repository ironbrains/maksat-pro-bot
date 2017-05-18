class TelegramWebhooksController < Telegram::Bot::UpdatesController
  def start(*)
    user = User.find_or_create_by_telegram from
    respond_with :message, user.reply
  end

  def message(message)
    user = User.find_or_create_by_telegram message['from']
    user.receive message['text']
    respond_with :message, user.reply
  end
end
