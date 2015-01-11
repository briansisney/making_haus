require 'rails_helper'

RSpec.describe "receipts/new", :type => :view do
  before(:each) do
    assign(:receipt, Receipt.new(
      :name => "MyString",
      :description => "MyText",
      :picture => "MyString",
      :email => false
    ))
  end

  it "renders new receipt form" do
    render

    assert_select "form[action=?][method=?]", receipts_path, "post" do

      assert_select "input#receipt_name[name=?]", "receipt[name]"

      assert_select "textarea#receipt_description[name=?]", "receipt[description]"

      assert_select "input#receipt_picture[name=?]", "receipt[picture]"

      assert_select "input#receipt_email[name=?]", "receipt[email]"
    end
  end
end
