require 'spec_helper'

describe "catch_reports/index" do
  before(:each) do
    assign(:catch_reports, [
      stub_model(CatchReport,
        :description => "MyText",
        :gps_coords => "Gps Coords",
        :user => nil,
        :start_time => 1,
        :stop_time => 2
      ),
      stub_model(CatchReport,
        :description => "MyText",
        :gps_coords => "Gps Coords",
        :user => nil,
        :start_time => 1,
        :stop_time => 2
      )
    ])
  end

  it "renders a list of catch_reports" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Gps Coords".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
