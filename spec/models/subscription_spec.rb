# spec/models/subscription.rb
require 'spec_helper'

describe Subscription do
  it "has a valid factory" do
    Factory.create(:sub).should be_valid
  end
  it "is invalid without a subscription_id" do
    Factory.build(:sub, subscription_id: nil).should_not be_valid
  end
  it "is invalid without a route_id" do
    Factory.build(:sub, route_id: nil).should_not be_valid
  end
  #it "is invalid without a run_sequence"   -I don't know what this is
  it "is invalid without a number" do
    Factory.build(:sub, number: nil).should_not be_valid
  end
  it "is invalid without a street" do
    Factory.build(:sub, street: nil).should_not be_valid
  end
  it "is invalid without a qty" do
    Factory.build(:sub, qty: nil).should_not be_valid
  end
  #it "is invalid without a qty_comp"
  it "is invalid without a last_name" do
    Factory.build(:sub, last_name: nil).should_not be_valid
  end
  it "is invalid without a first_name" do
    Factory.build(:sub, first_name: nil).should_not be_valid
  end
  it "is invalid without a phone_number" do
    Factory.build(:sub, phone_number: nil).should_not be_valid
  end
  it "is invalid without a email" do
    Factory.build(:sub, email: nil).should_not be_valid
  end
  it "is invalid without a city" do
    Factory.build(:sub, city: nil).should_not be_valid
  end
  it "is invalid without a state" do
    Factory.build(:sub, state: nil).should_not be_valid
  end
  it "is invalid without a zip" do
    Factory.build(:sub, zip: nil).should_not be_valid
  end
  it "is invalid without a started_date" do
    Factory.build(:sub, started_date: nil).should_not be_valid
  end
  #it "is invalid without a last_letter_sent_date"
  #it "is invalid without a renewal_x0020_grp"
  it "is invalid without a sold_x0020_by" do
    Factory.build(:sub, sold_x0020_By: nil).should_not be_valid
  end
  it "is invalid without a subscription_amount" do
    Factory.build(:sub, subscription_amount: nil).should_not be_valid
  end
  #it "is invalid without a maint"
  it "is invalid without a renewal_due_date" do
    Factory.build(:sub, renewal_due_date: nil).should_not be_valid
  end
  it "is invalid without a subscription_status" do
    Factory.build(:sub, subscription_status: nil).should_not be_valid
  end
  #it "is invalid without a alternative_invoice"
  #it "is invalid without a map_date"
end