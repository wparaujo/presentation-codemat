class Theme < ApplicationRecord
  has_many :dojos
  after_update :notify_observers

  include Notifier

end
