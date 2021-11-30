class PhonesController < ApplicationController
  def index
    @phones = Phone.all 
    render 'index.html.erb'
  end
end
