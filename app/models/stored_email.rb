class StoredEmail < ActiveRecord::Base
  validates :email, presence: true, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}, uniqueness: true 
end
