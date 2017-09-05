class Puppy < ApplicationRecord
  has_attached_file :image1, styles: { large: "600x 600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/
  has_attached_file :image2, styles: { large: "600x 600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/
  has_attached_file :image3, styles: { large: "600x 600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/
  has_many :bookings
end
