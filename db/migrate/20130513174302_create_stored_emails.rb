class CreateStoredEmails < ActiveRecord::Migration
  def change
    create_table :stored_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
