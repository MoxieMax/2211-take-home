class Api::V1::SubscriptionsController < ApplicationController
  def index
    render json: SubscriptionSerializer.new( Customer.find(params[:customer_id]).subscriptions)
  end
  
  def create
    sub = Subscription.create!(sub_params)
    
    render json: SubscriptionSerializer.new(sub), status: 201
  end
  
  private
  
    def sub_params
      params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
    end
end