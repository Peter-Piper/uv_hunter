require 'spec_helper'

describe "catch_reports/edit" do
  before(:each) do
    @catch_report = assign(:catch_report, stub_model(CatchReport,
      :description => "MyText",
      :gps_coords => "MyString",
      :user => nil,
      :start_time => 1,
      :stop_time => 1
    ))
  end

  it "renders the edit catch_report form" do
    render

    assert_select "form[action=?][method=?]", catch_report_path(@catch_report), "post" do
      assert_select "textarea#catch_report_description[name=?]", "catch_report[description]"
      assert_select "input#catch_report_gps_coords[name=?]", "catch_report[gps_coords]"
      assert_select "input#catch_report_user[name=?]", "catch_report[user]"
      assert_select "input#catch_report_start_time[name=?]", "catch_report[start_time]"
      assert_select "input#catch_report_stop_time[name=?]", "catch_report[stop_time]"
    end
  end
end
