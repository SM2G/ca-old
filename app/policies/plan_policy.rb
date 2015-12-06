class PlanPolicy
  private

  attr_reader :user

  public

  def initialize(user)
    @user = user
  end

  def create_employees?
    user.employees.count < plan.max_employees
  end

  def receive_mail_notifications?
    plan.mail_notifications_enabled
  end

  private

  def plan
    return @plan if @plan

    plan_name = user.plan || Settings.plans.default
    @plan     = Settings.plans.list[plan_name]
  end
end
