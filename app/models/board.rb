class Board < ApplicationRecord
    has_and_belongs_to_many :players, :join_table => :players_boards
    validates :game_name, presence: true, length: {in: 3..20}
    validates :white_player_id, presence: true
    validates :black_player_id, presence: true
end
