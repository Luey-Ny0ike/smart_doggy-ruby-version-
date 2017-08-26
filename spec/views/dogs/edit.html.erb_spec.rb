require 'rails_helper'

RSpec.describe "dogs/edit", type: :view do
  before(:each) do
    @dog = assign(:dog, Dog.create!(
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

  it "renders the edit dog form" do
    render

    assert_select "form[action=?][method=?]", dog_path(@dog), "post" do

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
