class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.text :history_string
      t.string :game_name

      t.timestamps
    end
  end
end
