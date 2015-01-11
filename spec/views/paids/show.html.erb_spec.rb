require 'rails_helper'

RSpec.describe "paids/show", :type => :view do
  before(:each) do
    @paid = assign(:paid, Paid.create!(
      :amount => 1.5,
      :platform => "Platform",
      :actor_id => 1,
      :target_id => 2,
      :reproter_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Platform/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
