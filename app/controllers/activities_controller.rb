class ActivitiesController < ApplicationController
  respond_to :html, :json

  def index
    params[:page] ||= 1
    @activities = Activity.for_user(current_user, params)
    @pictures =  Activity.where(targetable_type: "Picture")
    respond_with @activities
  end
end
