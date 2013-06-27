class StoredEmailsController < ApplicationController
  before_filter :set_headers, only: :create
  skip_before_filter :verify_authenticity_token

  def create
    StoredEmail.create(stored_email_params)
    render text: 'OK'
  end

  protected

  def set_headers
    headers['Access-Control-Allow-Origin'] = '*'      
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Max-Age'] = "1728000"
  end
  

  def stored_email_params
    params.require(:stored_email).permit(:email, :source)
  end
end
