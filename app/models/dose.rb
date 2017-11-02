class Dose < ApplicationRecord
  belongs_to :cocktail , dependent: :destroy
  belongs_to :ingredient
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
