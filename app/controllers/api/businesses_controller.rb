class Api::BusinessesController < ApplicationController
  def index
    @businesses = params[:bounds] ? Business.in_bounds(params[:bounds]) : Business.all
  end

  def show
    @business = Business.find(params[:id])
  end
end
