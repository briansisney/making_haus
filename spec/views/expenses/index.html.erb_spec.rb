require 'rails_helper'

RSpec.describe "expenses/index", :type => :view do
  before(:each) do
    assign(:expenses, [
      Expense.create!(
        :name => "Name",
        :amount => 1.5,
        :receipt => nil,
        :user => nil,
        :week => nil,
        :expense_type => "Expense Type"
      ),
      Expense.create!(
        :name => "Name",
        :amount => 1.5,
        :receipt => nil,
        :user => nil,
        :week => nil,
        :expense_type => "Expense Type"
      )
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Expense Type".to_s, :count => 2
  end
end
