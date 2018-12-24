class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :age
      t.integer :parent_id
      t.integer :course_id
      t.integer :kid_number

      t.timestamps
    end
  end
end
