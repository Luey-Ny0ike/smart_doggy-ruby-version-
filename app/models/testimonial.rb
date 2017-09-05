class Testimonial < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_attached_file :image, styles: { large: "600x 600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_presence_of :title
  validates_presence_of :message
end
