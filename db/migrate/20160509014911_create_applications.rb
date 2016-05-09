class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :gender
      t.date :date_of_birth
      t.string :gpa
      t.text :essay

      t.timestamps null: false
    end
  end
end
