module Notifier
  def initialize(*attrs)
    super(*attrs)
  end

  def add_observer(observer)
    self.observers << observer
  end

  def add_observers(observers)
    self.observers.extend observers
  end

  def delete_observer(observer)
    self.observers.delete observer
  end

  def notify_observers
    @observers.each do |observer|
      #TODO: Implements notify for User
      #observer.notify(self)
    end
  end
end
