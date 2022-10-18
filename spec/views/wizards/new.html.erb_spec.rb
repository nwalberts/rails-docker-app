require 'rails_helper'

RSpec.describe "wizards/new", type: :view do
  before(:each) do
    assign(:wizard, Wizard.new(
      name: "MyString"
    ))
  end

  it "renders new wizard form" do
    render

    assert_select "form[action=?][method=?]", wizards_path, "post" do

      assert_select "input[name=?]", "wizard[name]"
    end
  end
end
