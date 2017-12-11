class AddUsedtoCard < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :used, :boolean
  end
end
