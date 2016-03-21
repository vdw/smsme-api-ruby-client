module SMSme

  class Pricing
    attr_accessor :smsme

    def initialize(smsme)
      @smsme  = smsme
      @path   = '/PriceList.aspx'
    end

    def data
      @smsme.call @path
    end
  end
end