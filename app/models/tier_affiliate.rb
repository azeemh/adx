class TierAffiliate < ApplicationRecord
  belongs_to :tier
  belongs_to :affiliate
end
