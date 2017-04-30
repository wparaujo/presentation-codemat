class Theme < ApplicationRecord
  extend  Observer::Finder
  include Observer::Notifier

  has_many :dojos, after_add: :notify_addition
  has_and_belongs_to_many :observers,
                          class_name: "User",
                          join_table: "notifiers_observers"

  private
    def notify_addition(dojo)
      message = "Um novo dojo foi criado em "\
                "#{self.name}: #{dojo.title}"
      self.notify_observers("notify", message, "https://google.com")
    end
end
