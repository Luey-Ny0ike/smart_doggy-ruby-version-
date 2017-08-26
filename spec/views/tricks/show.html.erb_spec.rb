require 'rails_helper'

RSpec.describe "tricks/show", type: :view do
  before(:each) do
    @trick = assign(:trick, Trick.create!(
      :title => "Title",
      :step1 => "Step1",
      :step2 => "Step2",
      :step3 => "Step3",
      :step4 => "Step4",
      :extratips => "Extratips"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Step1/)
    expect(rendered).to match(/Step2/)
    expect(rendered).to match(/Step3/)
    expect(rendered).to match(/Step4/)
    expect(rendered).to match(/Extratips/)
  end
end
