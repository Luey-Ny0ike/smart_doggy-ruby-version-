require 'rails_helper'

RSpec.describe "testimonials/index", type: :view do
  before(:each) do
    assign(:testimonials, [
      Testimonial.create!(
        :title => "Title",
        :message => "Message"
      ),
      Testimonial.create!(
        :title => "Title",
        :message => "Message"
      )
    ])
  end

  it "renders a list of testimonials" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
