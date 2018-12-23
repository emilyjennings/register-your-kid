class AddKidNumberToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :kid_number, :string
  end
end
