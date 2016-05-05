class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :string
      t.string :date_of_birth
      t.string :date
      t.string :gender
      t.string :boolean
      t.string :address
      t.string :text
      t.string :city
      t.string :string
      t.string :zip_code
      t.string :string
      t.string :phone_number
      t.string :string
      t.string :email
      t.string :string
      t.string :essay
      t.string :text

      t.timestamps null: false
    end
  end
end
