class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.references :game, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :games
    add_index :questions, [:game_id, :created_at]
  end
end
