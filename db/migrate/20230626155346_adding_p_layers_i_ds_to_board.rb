class AddingPLayersIDsToBoard < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :white_player_id, :integer
    add_column :boards, :black_player_id, :integer
  end
end
