class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
