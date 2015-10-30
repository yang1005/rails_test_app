require 'rails_helper'

RSpec.describe "cats/index", type: :view do
  before(:each) do
    assign(:cats, [
      Cat.create!(
        :name => "Name",
        :price => 1
      ),
      Cat.create!(
        :name => "Name",
        :price => 1
      )
    ])
  end

  it "renders a list of cats" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
