require 'rails_helper'

RSpec.describe "puppies/index", type: :view do
  before(:each) do
    assign(:puppies, [
      Puppy.create!(
        :name => "Name",
        :age => "",
        :breed => "Breed",
        :gender => "Gender",
        :color => "Color",
        :nickname => "Nickname",
        :title => "Title",
        :price => "",
        :recomendation => "Recomendation",
        :description => "Description"
      ),
      Puppy.create!(
        :name => "Name",
        :age => "",
        :breed => "Breed",
        :gender => "Gender",
        :color => "Color",
        :nickname => "Nickname",
        :title => "Title",
        :price => "",
        :recomendation => "Recomendation",
        :description => "Description"
      )
    ])
  end

  it "renders a list of puppies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Recomendation".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
