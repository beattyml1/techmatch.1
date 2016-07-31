require 'rails_helper'

RSpec.describe "message_threads/edit", type: :view do
  before(:each) do
    @message_thread = assign(:message_thread, MessageThread.create!(
      :title => "MyString",
      :job => nil,
      :user => nil
    ))
  end

  it "renders the edit message_thread form" do
    render

    assert_select "form[action=?][method=?]", message_thread_path(@message_thread), "post" do

      assert_select "input#message_thread_title[name=?]", "message_thread[title]"

      assert_select "input#message_thread_job_id[name=?]", "message_thread[job_id]"

      assert_select "input#message_thread_user_id[name=?]", "message_thread[user_id]"
    end
  end
end
