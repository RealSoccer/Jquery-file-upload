class PortfoliosController < ApplicationController
  respond_to :json, only: [:create, :update, :destory]

  def create
    @portfolio = Portfolio.new(params[:portfolio])
    if @portfolio.save
      respond_with(@portfolio, :status => 201, :default_template => :show)
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end
end