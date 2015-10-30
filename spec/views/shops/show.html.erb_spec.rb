require 'rails_helper'

RSpec.describe "shops/show", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "Name",
      :zipcode => "Zipcode",
      :address => "Address",
      :tel => "Tel"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Tel/)
  end
end
