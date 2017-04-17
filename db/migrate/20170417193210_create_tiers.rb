class CreateTiers < ActiveRecord::Migration[5.0]
  def change
    create_table :tiers do |t|
      t.string :title
      t.string :vertical_name

      t.timestamps
    end
  end
end
