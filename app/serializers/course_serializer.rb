class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start_time, :age_group, :teacher_id
  has_many :kids
  belongs_to :teacher
end
