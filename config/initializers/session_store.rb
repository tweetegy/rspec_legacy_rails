# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rspec_legacy_rails_session',
  :secret      => '2a1240aaa8afea1bd71121cb5fbc914b0a97cb457cdc501e2e35bc5a388239007ab6793ff8314122c6a2bff95096e66f0a654897769106bdd15ba5abafdfd50c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
