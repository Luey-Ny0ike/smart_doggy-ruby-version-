require 'rails_helper'

RSpec.describe "puppies/show", type: :view do
  before(:each) do
    @puppy = assign(:puppy, Puppy.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Breed/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Recomendation/)
    expect(rendered).to match(/Description/)
  end
end
