module SMSme

  class Send
    attr_accessor :smsme

    def initialize(smsme)
      @smsme  = smsme
      @path   = '/SendSmsRequest.aspx'
    end

    def data(originator = nil, recipient = nil, message = nil, delivery_date = nil)
      _params = { 'Originator' => originator,
                  'Mobile'     => recipient,
                  'Body'       => message,
                  'smsDate'    => delivery_date
                }

      @smsme.call @path, _params
    end
  end
end