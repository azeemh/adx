class TierOffer < ApplicationRecord
  belongs_to :tier
  belongs_to :offer
end
