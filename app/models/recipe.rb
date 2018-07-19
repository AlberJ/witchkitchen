class Recipe < ApplicationRecord

  belongs_to :user
  has_many :ingredients, dependent: :destroy
  belongs_to :kind

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :user

  validates :preparation, presence: true
end
