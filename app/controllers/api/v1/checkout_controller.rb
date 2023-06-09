class Api::V1::CheckoutController < ApplicationController
    protect_from_forgery with: :null_session
    
    def create
        date = DateTime.parse(params[:date]).strftime("%d/%m")
        interval = TimeInterval.find_by(value: params[:duration]);
        startime = Time.parse(params[:time])
        endtime = startime + (interval.value).minutes
        name = params[:name].gsub!(/[^0-9A-Za-z]/, '')
        pp params
       @session=  Stripe::Checkout::Session.create({
        # success_url: "http://localhost:3002/success?name=#{name}&email=#{params[:email]}",
            # cancel_url: "http:/localhost:3002/cancel?name=#{name}",
            success_url: "https://antoniofernandes.com/success?name=#{name}&email=#{params[:email]}",
            cancel_url: "https://antoniofernandes.com/cancel?name=#{name}",
             line_items: [
                {
                    name: "Marcação de #{interval.label} dia: #{ date }",
                    amount: interval.price * 100,
                    currency: 'eur',
                    quantity: 1
                }
                ],
            mode: 'payment',
}) 
    converted = ActiveSupport::JSON.decode(@session.to_json)
    Schedule.create(name: params[:name], start:startime,date: params[:date], email:params[:email], end: endtime, userid: converted['payment_intent'], message: params[:message]);
    render json: @session
    end
end