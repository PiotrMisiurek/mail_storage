require 'spec_helper'

describe StoredEmailsController do

  it "create" do
    StoredEmail.should_receive(:create).once
    post :create, stored_email: {email: 'user@example.com'}
    response.body.should == "OK"
  end
end
