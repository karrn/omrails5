class Recipe < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :ingredients, presence: true
  validates :directions, presence: true


  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
