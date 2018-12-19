class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :age_group
      t.datetime :start_time
      t.integer :teacher_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
