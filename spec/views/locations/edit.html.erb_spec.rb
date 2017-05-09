require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :city => "MyString",
      :country => "MyString",
      :address => "MyString",
      :number => "",
      :complement => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_country[name=?]", "location[country]"

      assert_select "input#location_address[name=?]", "location[address]"

      assert_select "input#location_number[name=?]", "location[number]"

      assert_select "input#location_complement[name=?]", "location[complement]"
    end
  end
end
