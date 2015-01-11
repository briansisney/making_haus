require 'rails_helper'

RSpec.describe "expenses/edit", :type => :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      :name => "MyString",
      :amount => 1.5,
      :receipt => nil,
      :user => nil,
      :week => nil,
      :expense_type => "MyString"
    ))
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do

      assert_select "input#expense_name[name=?]", "expense[name]"

      assert_select "input#expense_amount[name=?]", "expense[amount]"

      assert_select "input#expense_receipt_id[name=?]", "expense[receipt_id]"

      assert_select "input#expense_user_id[name=?]", "expense[user_id]"

      assert_select "input#expense_week_id[name=?]", "expense[week_id]"

      assert_select "input#expense_expense_type[name=?]", "expense[expense_type]"
    end
  end
end
