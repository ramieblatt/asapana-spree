# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mystore_session',
  :secret      => '9f8e6455f9766bc22b1379c58f5b9b36b9beb28fb9196673e3a5d3c6cb7a2c2b7daad25166ab83493efe42f0e6edf54930d49b87ab4d51dda919b01fccbdcb68'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store