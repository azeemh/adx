class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :link_to_image
      t.boolean :is_capped
      t.decimal :EPC
      t.string :lp_offer_name
      t.integer :rank

      t.timestamps
    end
  end
end
