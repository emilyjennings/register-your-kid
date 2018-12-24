class ChangeKidNumberToString < ActiveRecord::Migration[5.2]
  def change
    change_column :kids, :kid_number, :string
  end
end
