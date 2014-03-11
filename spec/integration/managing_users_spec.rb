require 'spec_helper'

describe "Managing Users" do
  let(:user) { FactoryGirl.create(:user, :first_name => "The orig. name") }
  let(:new_name) { "A new name" }

  before do
    # of course, most apps might have authentication!
    visit edit_user_path(user)
  end

  def fillin_and_submit_form(name)
    within(".edit_user") do
        fill_in 'user_first_name', :with => name
      end
      submit_form('.edit_user')
  end

  context "editing a User" do
    it "should be possible to change the first name" do
      user.first_name.should eq "The orig. name"
      fillin_and_submit_form(new_name)
      user.reload.first_name.should eq new_name
    end
  end
end