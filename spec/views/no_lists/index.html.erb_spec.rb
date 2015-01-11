require 'rails_helper'

RSpec.describe "no_lists/index", :type => :view do
  before(:each) do
    assign(:no_lists, [
      NoList.create!(
        :name => "Name",
        :user => nil
      ),
      NoList.create!(
        :name => "Name",
        :user => nil
      )
    ])
  end

  it "renders a list of no_lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
