class ChangeStartTimeToBeStringInCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :start_time, :string
  end
end
