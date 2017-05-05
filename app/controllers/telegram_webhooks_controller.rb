class TelegramWebhooksController < Telegram::Bot::UpdatesController
  def start(*)
    respond_with :message, text: 'Hey! I am bot!'
  end

  def message(message)
    respond_with :message, text: message['text'], reply_markup: { keyboard: [['Yes'], ['No']] }
  end
end
