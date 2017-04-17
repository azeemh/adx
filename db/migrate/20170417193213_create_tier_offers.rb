class CreateTierOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :tier_offers do |t|
      t.references :tier, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
