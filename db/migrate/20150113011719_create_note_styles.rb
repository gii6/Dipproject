class CreateNoteStyles < ActiveRecord::Migration
  def change
    create_table :note_styles do |t|
      t.string :name
      t.string :code
      t.boolean :style

      t.timestamps null: false
    end
  end
end
