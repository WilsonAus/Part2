require 'spec_helper'

describe Friendship do
	it "has a valid factory" do
		FactoryGirl.create(:friendship).should be_valid
	end

	it "is valid without a user_id" do
		FactoryGirl.build(:friendship, user_id: nil).should be_valid
	end

	it "is valid without a friend_id" do
		FactoryGirl.build(:friendship, friend_id: nil).should be_valid
	end

end
