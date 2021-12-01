class PhonesController < ApplicationController
  def index
    @phones = Phone.all 
    render 'index.html.erb'
  end

  def show 
    @phone = Phone.find(params[:id])
    render 'show.html.erb'
  end

  def create
    @phone = Phone.new(
      maker: params[:maker],
      version: params[:version],
      color: params[:color]
    )
    @phone.save
    # render 'show.html.erb'
    redirect_to "/phones/#{@phone.id}"
  end

  def new
    render 'new.html.erb'
  end
end
