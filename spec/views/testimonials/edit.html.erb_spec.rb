require 'rails_helper'

RSpec.describe "testimonials/edit", type: :view do
  before(:each) do
    @testimonial = assign(:testimonial, Testimonial.create!(
      :title => "MyString",
      :message => "MyString"
    ))
  end

  it "renders the edit testimonial form" do
    render

    assert_select "form[action=?][method=?]", testimonial_path(@testimonial), "post" do

      assert_select "input[name=?]", "testimonial[title]"

      assert_select "input[name=?]", "testimonial[message]"
    end
  end
end
