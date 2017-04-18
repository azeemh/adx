class Offer < ApplicationRecord
  validates :title, presence: true
  validates :link_to_image, presence: true
  validates :lp_offer_name, presence: true
  belongs_to :tier, optional:true
end
