require 'rails_helper'

RSpec.describe "receipts/show", :type => :view do
  before(:each) do
    @receipt = assign(:receipt, Receipt.create!(
      :name => "Name",
      :description => "MyText",
      :picture => "Picture",
      :email => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/false/)
  end
end
