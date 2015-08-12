class Game < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  has_many :questions, dependent: :destroy
  validates :user_id, presence: true
  validates :game_name, presence: true
end

 