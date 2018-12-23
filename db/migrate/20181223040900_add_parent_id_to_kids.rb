class AddParentIdToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :parent_id, :integer
  end
end
