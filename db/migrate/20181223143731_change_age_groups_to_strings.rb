class ChangeAgeGroupsToStrings < ActiveRecord::Migration[5.2]
  change_table :courses do |t|
    t.remove :age_group
    t.string :age_group
  end
end
