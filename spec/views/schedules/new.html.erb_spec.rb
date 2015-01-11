require 'rails_helper'

RSpec.describe "schedules/new", :type => :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      :week => nil,
      :user => nil
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input#schedule_week_id[name=?]", "schedule[week_id]"

      assert_select "input#schedule_user_id[name=?]", "schedule[user_id]"
    end
  end
end
