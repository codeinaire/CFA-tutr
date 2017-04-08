class Profile < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader
  has_many :badges, :dependent => :delete_all

  after_create :create_badge

  def create_badge
    Badge.create(profile_id: id, name:"Registered", image:"public/registered.jpg")
  end
end
