class AvailableTimesController < ApplicationController

  before_action :authenticate_user!

  def index
    @available_times = current_user.available_times
  end
  def update
    current_user.available_times.find(params[:id])
      .update_attributes available_time_params
  end
  def create
    current_user.available_times.build(available_time_params).save
  end

  private
  def available_time_params
    params.require(:available_time)
      .permit AvailableTime::UPDATABLE_ATTRS
  end

end
