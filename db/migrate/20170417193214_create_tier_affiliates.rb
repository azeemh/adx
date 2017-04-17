class CreateTierAffiliates < ActiveRecord::Migration[5.0]
  def change
    create_table :tier_affiliates do |t|
      t.references :tier, foreign_key: true
      t.references :affiliate, foreign_key: true

      t.timestamps
    end
  end
end
