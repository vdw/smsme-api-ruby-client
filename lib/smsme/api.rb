require 'smsme/core/balance'
require 'smsme/core/pricing'
require 'smsme/core/reports'
require 'smsme/core/send'
require 'smsme/core/send_bulk'

module SMSme

  class Api
    attr_accessor :username, :password, :hostname

    def initialize(username = nil, password = nil, hostname = 'http://webservice.smsme.gr')
      @hostname = hostname || ENV['SMSME_HOSTNAME']
      @username = username || ENV['SMSME_USERNAME']
      @password = password || ENV['SMSME_PASSWORD']

      raise StandardError, 'You must provide a Smsme username and password' unless @username || @password
    end

    # Makes the requests to api
    def call(path, params = {})
      uri         = @hostname + path
      credentials = { 'Username' => @username, 'Password' => @password }

      response    = ::HTTPClient.get uri, params.merge(credentials)
      response.body
    end

    # Returns the user's credit in euros
    def balance
      Balance.new self
    end

    # Lists pricing tables in euros in xml format
    def pricing
      Pricing.new self
    end

    # Lists all the sending reports for a specific date range
    def reports
      Reports.new self
    end

    # Sends a sms to a single recipient
    def send
      Send.new self
    end

    # Sned a sms to multiple recipients
    def send_bulk
      SendBulk.new self
    end
  end

end