require 'rails_helper'

RSpec.describe "message_threads/index", type: :view do
  before(:each) do
    assign(:message_threads, [
      MessageThread.create!(
        :title => "Title",
        :job => nil,
        :user => nil
      ),
      MessageThread.create!(
        :title => "Title",
        :job => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of message_threads" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
