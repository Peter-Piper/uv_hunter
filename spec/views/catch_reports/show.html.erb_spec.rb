require 'spec_helper'

describe "catch_reports/show" do
  before(:each) do
    @catch_report = assign(:catch_report, stub_model(CatchReport,
      :description => "MyText",
      :gps_coords => "Gps Coords",
      :user => nil,
      :start_time => 1,
      :stop_time => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Gps Coords/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
