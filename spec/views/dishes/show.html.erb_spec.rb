require 'rails_helper'

RSpec.describe "dishes/show", :type => :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
      :name => "Name",
      :user => nil,
      :recipe => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
