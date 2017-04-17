class CreateAffiliates < ActiveRecord::Migration[5.0]
  def change
    create_table :affiliates do |t|
      t.string :name
      t.string :affid

      t.timestamps
    end
  end
end
