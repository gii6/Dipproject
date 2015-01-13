class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :style
      t.string :name
      t.string :director
      t.string :responsible
      t.references :year, index: true

      t.timestamps null: false
    end
    add_foreign_key :departments, :years
  end
end
