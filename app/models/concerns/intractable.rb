module Intractable
  extend ActiveSupport::Concern

  def start(_message)
    'success'
  end

  def username(_message)
    'error'
  end

  def username_again(_message)
    'success'
  end

  def secret(_message)
    'error'
  end

  def secret_again(_message)
    'success'
  end

  def menu(_message)
    'events'
  end

  def events(_message)
    'success'
  end
end
