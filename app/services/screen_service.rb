class ScreenService
  def self.screens
    @@screens ||= JSON.parse File.read(File.join(Rails.root, 'config', 'screens.json'))
  end

  def self.get_message(screen)
    screens[screen]['message']
  end

  def self.get_next_screen(current_screen, _message)
    screens[current_screen]['next_screens']
  end
end
