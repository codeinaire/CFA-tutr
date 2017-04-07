require 'rails_helper'

RSpec.describe "skills/index", type: :view do
  before(:each) do
    assign(:skills, [
      Skill.create!(
        :user => nil,
        :name => "Name",
        :confident => false,
        :need_improvement => false
      ),
      Skill.create!(
        :user => nil,
        :name => "Name",
        :confident => false,
        :need_improvement => false
      )
    ])
  end

  it "renders a list of skills" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
