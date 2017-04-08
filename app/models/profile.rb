class Profile < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader
  has_many :badges

  after_create :create_badge

  def create_badge
    Badge.create(profile_id: id, name:"Registered", image:"registered.png")
  end
end
