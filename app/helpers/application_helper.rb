# require "google/apis/calendar_v3"
# require "googleauth"
# require "googleauth/stores/file_token_store"
# require "date"
# require "fileutils"


module ApplicationHelper

    # def authorize
    #     client_id =  '909712010895-jen4m7a60ftg4g9icbr5nj886j0qnneo.apps.googleusercontent.com'
    #     client_secret= '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',
    #     refresh_token= "1//04Ii2_VvRBOifCgYIARAAGAQSNwF-L9IrWuPN_NjFuLyZrpRNzSODdU858meYJaejl2Ke7ppzJJLdf5b8F6Qqn9Sio2c_fdbmbHE"
    #     user_id = "default"
    #     credentials = authorizer.get_credentials user_id
    #     if credentials.nil?
    #       url = authorizer.get_authorization_url base_url: OOB_URI
    #       puts "Open the following URL in the browser and enter the " \
    #            "resulting code after authorization:\n" + url
    #       code = gets
    #       credentials = authorizer.get_and_store_credentials_from_code(
    #         user_id: user_id, code: code, base_url: OOB_URI
    #       )
    #     end
    #     credentials
    #   end
      
    #   def initialize
    #     service = Google::Apis::CalendarV3::CalendarService.new
    #     service.client_options.application_name = APPLICATION_NAME
    #     service.authorization = authorize
    #   end
end
