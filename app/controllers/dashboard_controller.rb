class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def feedback
  end
end
