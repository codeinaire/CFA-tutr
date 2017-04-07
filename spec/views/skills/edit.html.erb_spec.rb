require 'rails_helper'

RSpec.describe "skills/edit", type: :view do
  before(:each) do
    @skill = assign(:skill, Skill.create!(
      :user => nil,
      :name => "MyString",
      :confident => false,
      :need_improvement => false
    ))
  end

  it "renders the edit skill form" do
    render

    assert_select "form[action=?][method=?]", skill_path(@skill), "post" do

      assert_select "input#skill_user_id[name=?]", "skill[user_id]"

      assert_select "input#skill_name[name=?]", "skill[name]"

      assert_select "input#skill_confident[name=?]", "skill[confident]"

      assert_select "input#skill_need_improvement[name=?]", "skill[need_improvement]"
    end
  end
end
