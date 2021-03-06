require 'rails_helper'

RSpec.describe "meals/show", :type => :view do
  before(:each) do
    @meal = assign(:meal, Meal.create!(
      :name => "Name",
      :week => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
