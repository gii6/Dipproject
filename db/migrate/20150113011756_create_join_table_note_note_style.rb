class CreateJoinTableNoteNoteStyle < ActiveRecord::Migration
  def change
    create_join_table :notes, :note_styles do |t|
      # t.index [:note_id, :note_style_id]
      # t.index [:note_style_id, :note_id]
    end
  end
end
