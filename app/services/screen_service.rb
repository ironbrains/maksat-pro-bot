class ScreenService
  def self.screens
    @@screens ||= JSON.parse File.read(File.join(Rails.root, 'config', 'screens.json'))
  end

  def self.get_message(screen = 'username', _params = {})
    message = screens[screen]['message'].clone
    message['text'] = I18n.t 'text', scope: ['screens', screen]
    if keyboard = message['reply_markup']['keyboard'].clone
      keyboard.map! do |row|
        row.map do |button|
          I18n.t button, scope: ['screens', screen, 'buttons']
        end
      end
      message.merge('reply_markup' => { 'keyboard' => keyboard })
    else
      message
    end
  end

  def self.get_next_screen(current_screen, status)
    screens[current_screen]['next_screens'][status]
  end
end
