require 'rails_helper'

RSpec.describe "wizards/index", type: :view do
  before(:each) do
    assign(:wizards, [
      Wizard.create!(
        name: "Name"
      ),
      Wizard.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of wizards" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
