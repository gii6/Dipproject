class CreateAdditionalDayInfos < ActiveRecord::Migration
  def change
    create_table :additional_day_infos do |t|
      t.date :day
      t.string :style
      t.references :year, index: true

      t.timestamps null: false
    end
    add_foreign_key :additional_day_infos, :years
  end
end
