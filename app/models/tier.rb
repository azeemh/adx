class Tier < ApplicationRecord
  validates :title, presence: true 
  validates :vertical_name, presence: true
  has_many :tier_offers
  has_many :offers, through: :tier_offers
  has_many :tier_affiliates
  has_many :affiliates, through: :tier_affiliates
end
