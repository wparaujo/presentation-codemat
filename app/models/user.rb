class User < ApplicationRecord
	has_secure_password

	has_many :dojos
  has_many :notifications
  has_and_belongs_to_many :theme_notifiers,
                          class_name: "Theme",
                          join_table: "notifiers_observers"
  accepts_nested_attributes_for :dojos

  delegate :randoris, :katas, to: :dojos

  def themes_i_am_not_observer
    Theme.all_except_with_observer(self, :theme_notifiers)
  end

  def notify (message, link)
    self.notifications.create!({message: message, link: link})
  end
end
