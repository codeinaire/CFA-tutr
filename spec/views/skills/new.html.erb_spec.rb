require 'rails_helper'

RSpec.describe "skills/new", type: :view do
  before(:each) do
    assign(:skill, Skill.new(
      :user => nil,
      :name => "MyString",
      :confident => false,
      :need_improvement => false
    ))
  end

  it "renders new skill form" do
    render

    assert_select "form[action=?][method=?]", skills_path, "post" do

      assert_select "input#skill_user_id[name=?]", "skill[user_id]"

      assert_select "input#skill_name[name=?]", "skill[name]"

      assert_select "input#skill_confident[name=?]", "skill[confident]"

      assert_select "input#skill_need_improvement[name=?]", "skill[need_improvement]"
    end
  end
end
