class CreateProspections < ActiveRecord::Migration[6.0]
  def change
    create_table :prospections do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
