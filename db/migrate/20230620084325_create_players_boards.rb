class CreatePlayersBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :players_boards, id: false do |t|
      t.belongs_to :player, id: true
      t.belongs_to :board, id: true

      t.timestamps
    end
  end
end
