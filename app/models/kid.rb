class Kid < ApplicationRecord
  belongs_to :parent
  belongs_to :course
end
