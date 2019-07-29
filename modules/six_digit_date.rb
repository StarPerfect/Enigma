module SixDigitDate
  def six_digit_date
    offset = Time.new
    offset = offset.strftime("%d%m%y")
  end
end
