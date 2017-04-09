require 'rails_helper'

RSpec.describe Profile, type: :model do

  it "profile can save an image" do
  	profile = Profile.create(:name => "Testathula Sir Testyphon")
  	profile.avatar = [
  		file_fixture("me.jpg").open
  	]
  	profile.save!

  expect(profile.avatar.count).to eq(1)
  end
end
