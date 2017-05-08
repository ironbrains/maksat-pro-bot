module Intractable
  extend ActiveSupport::Concern

  def init(_message)
    'success'
  end

  def start(_message)
    'error'
  end

  def again(_message)
    'success'
  end

  def menu(_message)
    'events'
  end

  def events(_message)
    'success'
  end
end
