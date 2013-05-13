class StoredEmailsController < ApplicationController

  def create
    StoredEmail.create(stored_email_params)
    render text: 'OK'
  end

  protected

  def stored_email_params
    params.require(:stored_email).permit(:email)
  end
end
