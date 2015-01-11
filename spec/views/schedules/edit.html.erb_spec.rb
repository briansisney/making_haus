require 'rails_helper'

RSpec.describe "schedules/edit", :type => :view do
  before(:each) do
    @schedule = assign(:schedule, Schedule.create!(
      :week => nil,
      :user => nil
    ))
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(@schedule), "post" do

      assert_select "input#schedule_week_id[name=?]", "schedule[week_id]"

      assert_select "input#schedule_user_id[name=?]", "schedule[user_id]"
    end
  end
end
