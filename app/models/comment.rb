class Comment < ApplicationRecord
  belongs_to :testimonial
  belongs_to :user
  validates_presence_of :comment
end
