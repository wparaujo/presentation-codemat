require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :city => "City",
        :country => "Country",
        :address => "Address",
        :number => "",
        :complement => "Complement"
      ),
      Location.create!(
        :city => "City",
        :country => "Country",
        :address => "Address",
        :number => "",
        :complement => "Complement"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Complement".to_s, :count => 2
  end
end
