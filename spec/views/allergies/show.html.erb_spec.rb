require 'rails_helper'

RSpec.describe "allergies/show", :type => :view do
  before(:each) do
    @allergy = assign(:allergy, Allergy.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
