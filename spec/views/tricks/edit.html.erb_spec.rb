require 'rails_helper'

RSpec.describe "tricks/edit", type: :view do
  before(:each) do
    @trick = assign(:trick, Trick.create!(
      :title => "MyString",
      :step1 => "MyString",
      :step2 => "MyString",
      :step3 => "MyString",
      :step4 => "MyString",
      :extratips => "MyString"
    ))
  end

  it "renders the edit trick form" do
    render

    assert_select "form[action=?][method=?]", trick_path(@trick), "post" do

      assert_select "input[name=?]", "trick[title]"

      assert_select "input[name=?]", "trick[step1]"

      assert_select "input[name=?]", "trick[step2]"

      assert_select "input[name=?]", "trick[step3]"

      assert_select "input[name=?]", "trick[step4]"

      assert_select "input[name=?]", "trick[extratips]"
    end
  end
end
