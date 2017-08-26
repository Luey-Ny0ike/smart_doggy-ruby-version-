require 'rails_helper'

RSpec.describe "testimonials/new", type: :view do
  before(:each) do
    assign(:testimonial, Testimonial.new(
      :title => "MyString",
      :message => "MyString"
    ))
  end

  it "renders new testimonial form" do
    render

    assert_select "form[action=?][method=?]", testimonials_path, "post" do

      assert_select "input[name=?]", "testimonial[title]"

      assert_select "input[name=?]", "testimonial[message]"
    end
  end
end
