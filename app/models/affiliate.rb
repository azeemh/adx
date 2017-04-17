class Affiliate < ApplicationRecord
  validates :name, presence: true
  validates :affid, presence: true
  belongs_to :tier
end
