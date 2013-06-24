class AddSourceToStoredEmails < ActiveRecord::Migration
  def change
    add_column :stored_emails, :source, :string
  end
end
