require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :user => nil,
      :hook => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_user_id[name=?]", "company[user_id]"

      assert_select "input#company_hook[name=?]", "company[hook]"

      assert_select "textarea#company_description[name=?]", "company[description]"
    end
  end
end
