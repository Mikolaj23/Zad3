# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_zad3_session',
  :secret      => 'aa6a54b0daa1fddc2868b40a097786ecb698a748e4d3799146079b9661bb0f2710382fb02411827a5391b69389867bbdf42ea907b88daae5e54bd3636b25bfdd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
