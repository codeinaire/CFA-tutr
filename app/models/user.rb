class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  after_create :create_profile

  has_one :profile, :dependent => :delete

  def create_profile
    Profile.create(user_id: id)
  end

  has_many :skills, :dependent => :destroy
end
