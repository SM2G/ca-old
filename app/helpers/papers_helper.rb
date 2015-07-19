module PapersHelper

  def days_to_expire(paper)
   days_remains = @paper.expiration_date - Date.today
   respond_with days_remains.to_i
  end

end
