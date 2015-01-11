require 'rails_helper'

RSpec.describe "payments/show", :type => :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :amount => 1.5,
      :platform => "Platform",
      :actor_id => 1,
      :target_id => 2,
      :reporter_id => 3
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
