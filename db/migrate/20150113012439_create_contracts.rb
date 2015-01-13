class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :post
      t.string :rate
      t.string :budget
      t.string :style
      t.date :start
      t.date :finish

      t.timestamps null: false
    end
  end
end
