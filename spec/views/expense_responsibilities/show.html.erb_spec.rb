require 'rails_helper'

RSpec.describe "expense_responsibilities/show", :type => :view do
  before(:each) do
    @expense_responsibility = assign(:expense_responsibility, ExpenseResponsibility.create!(
      :expense => nil,
      :user => nil,
      :amount => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
  end
end
