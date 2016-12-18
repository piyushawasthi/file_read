class DashboardsController < ApplicationController
  before_action :set_file, only: [:get_file]

  def index
  end

  def get_file
    render action: :index
  end
 
  private

  def set_file
    return redirect_to root_path unless params[:file].present?
  	@file = DashboardServices::FileGenerator.new(params[:file], params[:input_line_size]).process!
  end
end
