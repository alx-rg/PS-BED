# app/webhooks/server.rb

require 'json'
require 'stripe'

class WebhooksController < ApplicationController
  protect_from_forgery with: :null_session

  # The library needs to be configured with your account's secret key.
  # Ensure the key is kept out of any version control system you might be using.
  Stripe.api_key = Rails.configuration.stripe[:secret_key]

  # This is your Stripe CLI webhook secret for testing your endpoint locally.
  ENDPOINT_SECRET = 'whsec_e62a436784f4ea58496e0ee837714ad0af0c41aa806832afa3ef15febcc7fbf1'

  def create
    payload = request.body.read
    sig_header = request.env['HTTP_STRIPE_SIGNATURE']
    event = nil

    begin
      event = Stripe::Webhook.construct_event(payload, sig_header, ENDPOINT_SECRET)
    rescue JSON::ParserError => e
      # Invalid payload
      render plain: 'Invalid payload', status: 400
      return
    rescue Stripe::SignatureVerificationError => e
      # Invalid signature
      render plain: 'Invalid signature', status: 400
      return
    end

    # Handle the event
    case event.type
    when 'payment_intent.succeeded'
      payment_intent = event.data.object
      # ... handle other event types
    else
      puts "Unhandled event type: #{event.type}"
    end

    head :ok
  end
end
stripe payment_intents create --amount 1000 --currency usd --description "Test Payment" --confirm --capture --payment-method types/card <YOUR_SECRET_KEY>



#
# # server.rb
# #
# # Use this sample code to handle webhook events in your integration.
# #
# # 1) Paste this code into a new file (server.rb)
# #
# # 2) Install dependencies
# #   gem install sinatra
# #   gem install stripe
# #
# # 3) Run the server on http://localhost:4242
# #   ruby server.rb

# require 'json'
# require 'sinatra'
# require 'stripe'

# # The library needs to be configured with your account's secret key.
# # Ensure the key is kept out of any version control system you might be using.
# Stripe.api_key = Rails.configuration.stripe[:secret_key]

# # This is your Stripe CLI webhook secret for testing your endpoint locally.
# endpoint_secret = 'whsec_e62a436784f4ea58496e0ee837714ad0af0c41aa806832afa3ef15febcc7fbf1'

# set :port, 4242

# post '/webhook' do
#     payload = request.body.read
#     sig_header = request.env['HTTP_STRIPE_SIGNATURE']
#     event = nil

#     begin
#         event = Stripe::Webhook.construct_event(
#             payload, sig_header, endpoint_secret
#         )
#     rescue JSON::ParserError => e
#         # Invalid payload
#         status 400
#         return
#     rescue Stripe::SignatureVerificationError => e
#         # Invalid signature
#         status 400
#         return
#     end

#     # Handle the event
#     case event.type
#     when 'payment_intent.succeeded'
#         payment_intent = event.data.object
#     # ... handle other event types
#     else
#         puts "Unhandled event type: #{event.type}"
#     end

#     status 200
# end
