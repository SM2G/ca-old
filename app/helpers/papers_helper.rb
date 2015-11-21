module PapersHelper
  def paper_days_to_expire(paper)
    (paper.expiration_date - Date.current).to_i
  end

  def paper_expiration_days(paper)
    (Date.current - paper.expiration_date).to_i
  end

  def paper_status_css_class(paper)
    expired            = paper.expiration_date < Date.current
    on_critical_period = Date.current >= (paper.expiration_date - paper.document.critical_days.days)
    on_warning_period  = Date.current >= (paper.expiration_date - paper.document.warning_days.days)

    if expired
      "text-primary" 
    elsif  on_critical_period
      "text-danger"
    elsif on_warning_period
      "text-warning"
    else
      "text-success"
    end
  end
end
