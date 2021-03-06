require 'spec_helper'

describe Post do
	it "has a valid factory" do
		FactoryGirl.create(:post).should be_valid
	end

	it "is invalid without a title" do
		FactoryGirl.build(:post, title: nil).should_not be_valid
	end

	it "is invalid with a title less than 5" do
		FactoryGirl.build(:post, title: "Nope").should_not be_valid
	end

	it "it is valid without a body" do
		FactoryGirl.build(:post, body: nil).should be_valid
	end

end