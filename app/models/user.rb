class User < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  
  has_many :posts
  has_many :comments
  # uniqueness case_sensitive: false, model: User, attribute: 'email'
end
