require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :title => "MyString",
      :hook => "MyString",
      :description => "MyText",
      :company => nil,
      :user => nil,
      :must_haves => "MyString",
      :love_to_haves => "MyString",
      :nice_to_haves => "MyString",
      :max_salary => "9.99",
      :min_years_experience => 1
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_hook[name=?]", "job[hook]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_company_id[name=?]", "job[company_id]"

      assert_select "input#job_user_id[name=?]", "job[user_id]"

      assert_select "input#job_must_haves[name=?]", "job[must_haves]"

      assert_select "input#job_love_to_haves[name=?]", "job[love_to_haves]"

      assert_select "input#job_nice_to_haves[name=?]", "job[nice_to_haves]"

      assert_select "input#job_max_salary[name=?]", "job[max_salary]"

      assert_select "input#job_min_years_experience[name=?]", "job[min_years_experience]"
    end
  end
end
