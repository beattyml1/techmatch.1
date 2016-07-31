require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Hook/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Must Haves/)
    expect(rendered).to match(/Love To Haves/)
    expect(rendered).to match(/Nice To Haves/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
