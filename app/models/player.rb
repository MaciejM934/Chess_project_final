class Player < ApplicationRecord
    has_and_belongs_to_many :borads, :join_table => :players_boards
    validates :nickname, presence: true, uniqueness: true,
    length: {in: 3..12}
    has_secure_password
    validates :password, presence: true, length: {minimum: 8}
end