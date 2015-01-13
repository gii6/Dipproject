class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :name
      t.boolean :is_current
      t.string :month

      t.timestamps null: false
    end
  end
end
