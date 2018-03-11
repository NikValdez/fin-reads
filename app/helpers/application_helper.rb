module ApplicationHelper
  def verbose_date(date)
    date.strftime('%B %d %Y')
  end


  def now_date
    DateTime.now.strftime('%B %d %Y')
  end
end
