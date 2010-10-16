# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_texasmoney_session',
  :secret      => 'e548aced51a77bb7d32c459406a37fe96a1b3c5a65965e32d03111d5e6b9be0aa7a125c912a4c0be4d7add193f55ff3ace66c65ae1272c742cf67b6cefaebf38'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
