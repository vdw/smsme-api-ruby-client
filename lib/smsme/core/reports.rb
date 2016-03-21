module SMSme

  class Reports
    attr_accessor :smsme

    def initialize(smsme)
      @smsme  = smsme
      @path   = '/Reports.aspx'
    end

    def data(start_date = nil, end_date = nil, originator = nil, recipient = nil)
      _params = { 'Sdate'      => start_date,
                  'Edate'      => end_date,
                  'Originator' => originator,
                  'Mobile'     => recipient
                }

      @smsme.call @path, _params
    end
  end
end