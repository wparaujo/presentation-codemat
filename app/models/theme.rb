class Theme < ApplicationRecord
  has_many :dojos
  has_and_belongs_to_many :observers,
                          class_name: "User",
                          join_table: "notifiers_observers"
  after_update :notify_observers

  include Notifier

end
