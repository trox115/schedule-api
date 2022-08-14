class CheckoutController < ApplicationController
    protect_from_forgery with: :null_session

    def create
        pp params
        date = DateTime.parse(params[:date]).strftime("%d/%m")
        interval = TimeInterval.find_by(value: params[:duration]);

       @session=  Stripe::Checkout::Session.create({
            success_url: "http://localhost:3000/?success&name=#{params[:name]}&email=#{params[:email]}",
            cancel_url: "http://localhost:3000?cancel&name=#{params[:name]}",
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
    render json: @session

    end
end