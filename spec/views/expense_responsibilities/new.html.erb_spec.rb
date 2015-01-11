require 'rails_helper'

RSpec.describe "expense_responsibilities/new", :type => :view do
  before(:each) do
    assign(:expense_responsibility, ExpenseResponsibility.new(
      :expense => nil,
      :user => nil,
      :amount => 1.5
    ))
  end

  it "renders new expense_responsibility form" do
    render

    assert_select "form[action=?][method=?]", expense_responsibilities_path, "post" do

      assert_select "input#expense_responsibility_expense_id[name=?]", "expense_responsibility[expense_id]"

      assert_select "input#expense_responsibility_user_id[name=?]", "expense_responsibility[user_id]"

      assert_select "input#expense_responsibility_amount[name=?]", "expense_responsibility[amount]"
    end
  end
end
