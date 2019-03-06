class Kid < ApplicationRecord
  belongs_to :parent
  belongs_to :course, optional: true
  scope :infant, -> { where(age: 0) }
  validates :name, :presence => true
  validates :age, :presence => true


end
