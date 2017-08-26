require 'rails_helper'

RSpec.describe "tricks/index", type: :view do
  before(:each) do
    assign(:tricks, [
      Trick.create!(
        :title => "Title",
        :step1 => "Step1",
        :step2 => "Step2",
        :step3 => "Step3",
        :step4 => "Step4",
        :extratips => "Extratips"
      ),
      Trick.create!(
        :title => "Title",
        :step1 => "Step1",
        :step2 => "Step2",
        :step3 => "Step3",
        :step4 => "Step4",
        :extratips => "Extratips"
      )
    ])
  end

  it "renders a list of tricks" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Step1".to_s, :count => 2
    assert_select "tr>td", :text => "Step2".to_s, :count => 2
    assert_select "tr>td", :text => "Step3".to_s, :count => 2
    assert_select "tr>td", :text => "Step4".to_s, :count => 2
    assert_select "tr>td", :text => "Extratips".to_s, :count => 2
  end
end
