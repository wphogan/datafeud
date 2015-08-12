class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  default_scope -> { order(:created_at) }
  validates :game_id, presence: true
  validates :content, presence: true, length: { maximum: 300 }
end
