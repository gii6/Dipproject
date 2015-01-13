class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.integer :external_id

      t.timestamps null: false
    end
  end
end