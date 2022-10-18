require 'rails_helper'

RSpec.describe "wizards/show", type: :view do
  before(:each) do
    @wizard = assign(:wizard, Wizard.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
