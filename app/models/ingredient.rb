class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: { scope: [:name] }

end
