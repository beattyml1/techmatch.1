require 'rails_helper'

RSpec.describe "message_threads/show", type: :view do
  before(:each) do
    @message_thread = assign(:message_thread, MessageThread.create!(
      :title => "Title",
      :job => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
