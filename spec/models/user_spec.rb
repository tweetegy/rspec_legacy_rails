require 'spec_helper'

describe User do
  it "should be defined" do
    defined?(User).should_not be_nil
  end

  describe "validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
  end

  describe "associations" do
    it { should belong_to :group }
  end

  describe "#full_name" do
    let(:user) { FactoryGirl.create(:user) }

    it "should return first_name + last_name" do
      user.full_name.should eq "#{user.first_name} #{user.last_name}"
    end
  end
end