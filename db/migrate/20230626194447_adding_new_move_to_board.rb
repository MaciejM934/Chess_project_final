class AddingNewMoveToBoard < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :new_move, :string
  end
end
