require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "MyString",
      :zipcode => "MyString",
      :address => "MyString",
      :tel => "MyString"
    ))
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do

      assert_select "input#shop_name[name=?]", "shop[name]"

      assert_select "input#shop_zipcode[name=?]", "shop[zipcode]"

      assert_select "input#shop_address[name=?]", "shop[address]"

      assert_select "input#shop_tel[name=?]", "shop[tel]"
    end
  end
end
