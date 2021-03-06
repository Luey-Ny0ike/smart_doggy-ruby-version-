require 'rails_helper'

RSpec.describe "tricks/new", type: :view do
  before(:each) do
    assign(:trick, Trick.new(
      :title => "MyString",
      :step1 => "MyString",
      :step2 => "MyString",
      :step3 => "MyString",
      :step4 => "MyString",
      :extratips => "MyString"
    ))
  end

  it "renders new trick form" do
    render

    assert_select "form[action=?][method=?]", tricks_path, "post" do

      assert_select "input[name=?]", "trick[title]"

      assert_select "input[name=?]", "trick[step1]"

      assert_select "input[name=?]", "trick[step2]"

      assert_select "input[name=?]", "trick[step3]"

      assert_select "input[name=?]", "trick[step4]"

      assert_select "input[name=?]", "trick[extratips]"
    end
  end
end
