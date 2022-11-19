

module Test
    extend ActiveSupport::Concern
def initialize
    # SCOPE = Google::Apis::CalendarV3::AUTH_CALENDAR_READONLY

    service = Google::Apis::CalendarV3::CalendarService.new
    pp service
    # service.authorization =  {
    #     client_id: '909712010895-jen4m7a60ftg4g9icbr5nj886j0qnneo.apps.googleusercontent.com',
    #     client_secret: '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',
    #     refresh_token: "1//04Ii2_VvRBOifCgYIARAAGAQSNwF-L9IrWuPN_NjFuLyZrpRNzSODdU858meYJaejl2Ke7ppzJJLdf5b8F6Qqn9Sio2c_fdbmbHE"
    #   }
    # #   pp client
    #     calendars = client.list_calendar_lists
end
end