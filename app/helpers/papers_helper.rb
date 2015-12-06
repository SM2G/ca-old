module PapersHelper
  def paper_days_to_expire(paper)
    (paper.expiration_date - Date.current).to_i
  end

  def paper_expiration_days(paper)
    (Date.current - paper.expiration_date).to_i
  end

  def paper_status(paper)
    if paper.expiration_date < Date.current
      :expired
    elsif Date.current >= (paper.expiration_date - paper.document.critical_days.days)
      :critical
    elsif Date.current >= (paper.expiration_date - paper.document.warning_days.days)
      :warning
    else
      :normal
    end
  end

  def paper_status_css_class(paper)
    case paper_status(paper)
    when :expired
      'text-primary'
    when :critical
      'text-danger'
    when :warning
      'text-warning'
    when :normal
      'text-success'
    end
  end

  def paper_status_css_style(paper)
    case paper_status(paper)
    when :expired
      'color: #337ab7;'
    when :critical
      'color: #a94442;'
    when :warning
      'color: #8a6d3b;'
    when :normal
      'color: #3c763d;'
    end
  end
end
