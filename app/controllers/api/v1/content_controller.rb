class Api::V1::ContentController < ApplicationController

    def index 
        @content = TimeInterval.all
        availableTimes = AvailableTime.all
        @content = {timeIntervals:@content, availableTimes: availableTimes }
        render json: @content
    end

    def schedule
        @schedule = Schedule.all;
        newSchedule = @schedule.is_after(Date.today)
        render json: newSchedule, only: [:date, :id, :start, :end]
    end
end
