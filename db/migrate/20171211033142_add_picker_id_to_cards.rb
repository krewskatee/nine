class AddPickerIdToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :picker_id, :integer
  end
end
