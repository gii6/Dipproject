class CreateDepPeople < ActiveRecord::Migration
  def change
    create_table :dep_people do |t|
      t.references :department, index: true
      t.references :contract, index: true
      t.references :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :dep_people, :departments
    add_foreign_key :dep_people, :contracts
    add_foreign_key :dep_people, :people
  end
end
