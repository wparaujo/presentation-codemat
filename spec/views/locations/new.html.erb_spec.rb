require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :city => "MyString",
      :country => "MyString",
      :address => "MyString",
      :number => "",
      :complement => "MyString"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_country[name=?]", "location[country]"

      assert_select "input#location_address[name=?]", "location[address]"

      assert_select "input#location_number[name=?]", "location[number]"

      assert_select "input#location_complement[name=?]", "location[complement]"
    end
  end
end
