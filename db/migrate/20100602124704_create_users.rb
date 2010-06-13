class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
	    t.string :login
	    t.string :first_name
	    t.string :last_name
	    t.string :email
	    t.string :password_hash
	    t.string :pasword_salt
	    t.integer :loging_count
	    t.datetime :last_loging
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
