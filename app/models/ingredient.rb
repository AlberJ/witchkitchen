class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, presence: true, length: {in: 3 .. 30}
  validates :unit, presence: true, length: {in: 3 .. 30}
end
