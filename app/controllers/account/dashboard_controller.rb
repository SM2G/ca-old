module Account
  class DashboardController < ApplicationController
    before_action :authenticate_user!

    def show
      @user        = current_user
      @plan_policy = PlanPolicy.new(@user)
    end
  end
end
