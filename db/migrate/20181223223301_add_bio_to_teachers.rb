class AddBioToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :bio, :string
  end
end
