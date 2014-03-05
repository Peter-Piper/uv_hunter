require 'spec_helper'

describe "catch_reports/new" do
  before(:each) do
    assign(:catch_report, stub_model(CatchReport,
      :description => "MyText",
      :gps_coords => "MyString",
      :user => nil,
      :start_time => 1,
      :stop_time => 1
    ).as_new_record)
  end

  it "renders new catch_report form" do
    render

    assert_select "form[action=?][method=?]", catch_reports_path, "post" do
      assert_select "textarea#catch_report_description[name=?]", "catch_report[description]"
      assert_select "input#catch_report_gps_coords[name=?]", "catch_report[gps_coords]"
      assert_select "input#catch_report_user[name=?]", "catch_report[user]"
      assert_select "input#catch_report_start_time[name=?]", "catch_report[start_time]"
      assert_select "input#catch_report_stop_time[name=?]", "catch_report[stop_time]"
    end
  end
end
