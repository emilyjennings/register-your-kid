class Kid < ApplicationRecord
  belongs_to :parent
  belongs_to :course, optional: true
  scope :infant, -> { where(age: 0) }

end
