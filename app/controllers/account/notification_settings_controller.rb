module Account
  class NotificationSettingsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user
    before_action :check_plan_policy

    def update
      if @user.update(notification_params)
        flash[:notice] = "Préférences de notification enregistrées."
      else
        flash[:alert] = "Nous ne parvenons pas à mettre à jour vos préférences de notification."
      end

      flash.discard
    end

    private

    def check_plan_policy
      plan_policy = PlanPolicy.new(@user)

      unless plan_policy.receive_mail_notifications?
        flash[:alert] = "Vous n'avez pas accès à cette fonctionnalité."
        render :update
      end
    end

    def notification_params
      params.require(:user).permit(:mail_notification_frequency)
    end

    def set_user
      @user = current_user
    end
  end
end
