require 'rails_helper'

describe Comment do
  context "it is not complete" do
    
    it "is invalid without a rating" do
			expect(FactoryGirl.build(:comment, rating: nil)).to_not be_valid
		end
		
		it "is invalid without a comment" do
			expect(FactoryGirl.build(:comment, body: nil)).to_not be_valid
		end
  end
end