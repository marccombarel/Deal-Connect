class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.text :info
      t.string :url
      t.string :email
      t.string :phone
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
