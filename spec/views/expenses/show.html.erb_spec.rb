require 'rails_helper'

RSpec.describe "expenses/show", :type => :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      :name => "Name",
      :amount => 1.5,
      :receipt => nil,
      :user => nil,
      :week => nil,
      :expense_type => "Expense Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Expense Type/)
  end
end
