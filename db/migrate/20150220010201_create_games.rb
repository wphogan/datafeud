class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :game_name
      t.boolean :private_game, default: true
      t.text :issue_area
      t.text :summary
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :games, :users
    add_index :games, [:user_id, :created_at]
  end
end
