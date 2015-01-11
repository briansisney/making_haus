require 'rails_helper'

RSpec.describe "receipts/edit", :type => :view do
  before(:each) do
    @receipt = assign(:receipt, Receipt.create!(
      :name => "MyString",
      :description => "MyText",
      :picture => "MyString",
      :email => false
    ))
  end

  it "renders the edit receipt form" do
    render

    assert_select "form[action=?][method=?]", receipt_path(@receipt), "post" do

      assert_select "input#receipt_name[name=?]", "receipt[name]"

      assert_select "textarea#receipt_description[name=?]", "receipt[description]"

      assert_select "input#receipt_picture[name=?]", "receipt[picture]"

      assert_select "input#receipt_email[name=?]", "receipt[email]"
    end
  end
end
