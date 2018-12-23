class AddDescriptionToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :description, :string
  end
end
