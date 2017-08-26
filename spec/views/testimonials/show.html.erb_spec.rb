require 'rails_helper'

RSpec.describe "testimonials/show", type: :view do
  before(:each) do
    @testimonial = assign(:testimonial, Testimonial.create!(
      :title => "Title",
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Message/)
  end
end
