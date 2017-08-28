class Comment < ApplicationRecord
  belongs_to :testimonial
  belongs_to :user
end
