class Api::BusinessesController < ApplicationController
  def index
    @businesses = params[:bounds] ? Business.in_bounds(params[:bounds]) : Business.all
  end

  def show
    @business = Business.find(params[:id])
  end

  def omnisearch
    @businesses = Business
                    .where("LOWER(name) LIKE ? OR LOWER(category) LIKE ?",
                     "%#{params[:query]}%".downcase, "%#{params[:query]}%".downcase)
                    .limit(10)
    render :index
  end
end
