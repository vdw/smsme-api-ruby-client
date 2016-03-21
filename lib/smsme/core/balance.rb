module SMSme

  class Balance
    attr_accessor :smsme

    def initialize(smsme)
      @smsme  = smsme
      @path   = '/login.aspx'
    end

    def data
      @smsme.call @path
    end
  end
end