class ContentController < ApplicationController

    def index 
        @content = TimeInterval.all
        availableTimes = AvailableTime.all
        @content = {timeIntervals:@content, availableTimes: availableTimes }
        render json: @content
    end

    def schedule
        @schedule = Schedule.all;
        newSchedule = @schedule.is_after(Date.today)
        render json: newSchedule
    end
end
