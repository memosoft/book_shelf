# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_book_shelf_session',
  :secret      => '4b3443efcb8f8c1ff6cfcd3c969f7d89d5bf1d9c3b8f94ca68f7fec84a80a69c4b7957441d513a6e82e39ba49e51ba7f3b761254475e20f8ae897323e2bd0882'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
