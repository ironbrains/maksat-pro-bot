class TelegramWebhooksController < Telegram::Bot::UpdatesController
  def start(*)
    respond_with :message, text: 'Hey! I am bot!'
  end

  def message(message)
    user = User.find_or_create_by_telegram message['from']
    user.receive message['text']
    respond_with :message, user.reply
  end
end
