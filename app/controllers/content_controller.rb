class ContentController < ApplicationController

    def index 
        @content = TimeInterval.all
        availableTimes = AvailableTime.all
        @content = {timeIntervals:@content, availableTimes: availableTimes }
        render json: @content
    end
end
