class Profile < ApplicationRecord
  belongs_to :user
  has_many :badges, :dependent => :delete_all

  mount_uploader :avatar, AvatarUploader

  after_create :create_badge

  def create_badge
    Badge.create(profile_id: id, name:"Registered", image:"public/registered.jpg")
  end
end
