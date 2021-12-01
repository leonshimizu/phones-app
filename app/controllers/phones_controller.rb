class PhonesController < ApplicationController
  def index
    @phones = Phone.all 
    render 'index.html.erb'
  end

  def show 
    @phone = Phone.find(params[:id])
    render 'show.html.erb'
  end
end
