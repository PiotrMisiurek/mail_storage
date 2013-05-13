require 'spec_helper'

describe StoredEmail do

  describe "validations" do
    it {StoredEmail.new(email: 'user@example.com').should be_valid}
    it {StoredEmail.new.should_not be_valid}
    it {StoredEmail.new(email: 'just a string').should_not be_valid}
    it "uniqueness" do
      StoredEmail.create(email: 'user@example.com').should be_valid
      StoredEmail.new(email: 'user@example.com').should_not be_valid
    end
  end
end
