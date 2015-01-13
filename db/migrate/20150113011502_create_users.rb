class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.string :username
      t.string :crypted_password
      t.string :salt,             :default => nil
      t.boolean :is_operator
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
