require 'rails_helper'

RSpec.describe "dogs/new", type: :view do
  before(:each) do
    assign(:dog, Dog.new(
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

  it "renders new dog form" do
    render

    assert_select "form[action=?][method=?]", dogs_path, "post" do

      assert_select "input[name=?]", "dog[name]"

      assert_select "input[name=?]", "dog[age]"

      assert_select "input[name=?]", "dog[breed]"

      assert_select "input[name=?]", "dog[gender]"

      assert_select "input[name=?]", "dog[color]"

      assert_select "input[name=?]", "dog[nickname]"

      assert_select "input[name=?]", "dog[title]"

      assert_select "input[name=?]", "dog[price]"

      assert_select "input[name=?]", "dog[recomendation]"

      assert_select "input[name=?]", "dog[description]"
    end
  end
end
