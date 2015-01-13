class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :start
      t.date :finish
      t.references :dep_person, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :dep_people
  end
end
