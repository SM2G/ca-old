class ReportsMailer < ApplicationMailer
  helper PapersHelper

  def daily(user_id)
    mail_report(user_id, 'Rapport quotidien')
  end

  def weekly(user_id)
    mail_report(user_id, 'Rapport hebdomadaire')
  end

  private

  def mail_report(user_id, subject)
    @user   = User.find(user_id)
    @papers = @user.papers.order(expiration_date: :asc)

    mail(to: @user.email, subject: subject)
  end
end
