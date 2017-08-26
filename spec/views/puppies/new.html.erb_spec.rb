require 'rails_helper'

RSpec.describe "puppies/new", type: :view do
  before(:each) do
    assign(:puppy, Puppy.new(
      :name => "MyString",
      :age => "",
      :breed => "MyString",
      :gender => "MyString",
      :color => "MyString",
      :nickname => "MyString",
      :title => "MyString",
      :price => "",
      :recomendation => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new puppy form" do
    render

    assert_select "form[action=?][method=?]", puppies_path, "post" do

      assert_select "input[name=?]", "puppy[name]"

      assert_select "input[name=?]", "puppy[age]"

      assert_select "input[name=?]", "puppy[breed]"

      assert_select "input[name=?]", "puppy[gender]"

      assert_select "input[name=?]", "puppy[color]"

      assert_select "input[name=?]", "puppy[nickname]"

      assert_select "input[name=?]", "puppy[title]"

      assert_select "input[name=?]", "puppy[price]"

      assert_select "input[name=?]", "puppy[recomendation]"

      assert_select "input[name=?]", "puppy[description]"
    end
  end
end
