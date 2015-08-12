class AddNoteToGamesQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :note, :text
  end
end
