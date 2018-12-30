class Kid < ApplicationRecord
  belongs_to :parent
  belongs_to :course, optional: true

  # def self.teenager?
  #   @kid.age > 12
  # end
end
