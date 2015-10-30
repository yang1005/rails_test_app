require 'rails_helper'

RSpec.describe "shops/index", type: :view do
  before(:each) do
    assign(:shops, [
      Shop.create!(
        :name => "Name",
        :zipcode => "Zipcode",
        :address => "Address",
        :tel => "Tel"
      ),
      Shop.create!(
        :name => "Name",
        :zipcode => "Zipcode",
        :address => "Address",
        :tel => "Tel"
      )
    ])
  end

  it "renders a list of shops" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
  end
end
