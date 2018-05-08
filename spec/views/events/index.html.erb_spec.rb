require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :description => "Description",
        :place => "Place"
      ),
      Event.create!(
        :description => "Description",
        :place => "Place"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
