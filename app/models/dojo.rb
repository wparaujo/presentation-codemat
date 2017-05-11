class Dojo < ApplicationRecord
  belongs_to :user
  self.inheritance_column = :category

  scope :katas, -> { where(category: 'kata') }
  scope :randoris, -> { where(category: 'randori') }

  has_one :location

  def self.categories
    %w(kata randori)
  end

end

class Kata < Dojo; end
class Randori < Dojo; end
