require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :title => "Title",
        :hook => "Hook",
        :description => "MyText",
        :company => nil,
        :user => nil,
        :must_haves => "Must Haves",
        :love_to_haves => "Love To Haves",
        :nice_to_haves => "Nice To Haves",
        :max_salary => "9.99",
        :min_years_experience => 2
      ),
      Job.create!(
        :title => "Title",
        :hook => "Hook",
        :description => "MyText",
        :company => nil,
        :user => nil,
        :must_haves => "Must Haves",
        :love_to_haves => "Love To Haves",
        :nice_to_haves => "Nice To Haves",
        :max_salary => "9.99",
        :min_years_experience => 2
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Hook".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Must Haves".to_s, :count => 2
    assert_select "tr>td", :text => "Love To Haves".to_s, :count => 2
    assert_select "tr>td", :text => "Nice To Haves".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
