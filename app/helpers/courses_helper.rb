module CoursesHelper
  def translate_date(date)
    month, year = date.split('/')

    month = I18n.t "date.month.#{month.downcase}"

    "#{month.capitalize}/#{year}"
  end
end
