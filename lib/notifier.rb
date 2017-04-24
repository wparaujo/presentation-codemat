module Notifier
  module Model
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

  module Finder
    def all_except_with_observer(observer, notifiers_method)
      unless observer.send(notifiers_method.to_s).empty?
        where(
          "id not in (?)",
          observer.send(notifiers_method.to_s).map(&:id)
        )
      else
        all
      end
    end
  end

  module Controller
    #TODO: Implements controller methods for observers
  end
end
