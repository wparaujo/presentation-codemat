require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :city => "City",
      :country => "Country",
      :address => "Address",
      :number => "",
      :complement => "Complement"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Complement/)
  end
end
