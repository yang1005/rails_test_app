require 'rails_helper'

RSpec.describe "shops/new", type: :view do
  before(:each) do
    assign(:shop, Shop.new(
      :name => "MyString",
      :zipcode => "MyString",
      :address => "MyString",
      :tel => "MyString"
    ))
  end

  it "renders new shop form" do
    render

    assert_select "form[action=?][method=?]", shops_path, "post" do

      assert_select "input#shop_name[name=?]", "shop[name]"

      assert_select "input#shop_zipcode[name=?]", "shop[zipcode]"

      assert_select "input#shop_address[name=?]", "shop[address]"

      assert_select "input#shop_tel[name=?]", "shop[tel]"
    end
  end
end
