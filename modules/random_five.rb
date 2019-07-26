module RandomFive
  def generate
    five_digits = rand(99999)
    five_digits = five_digits.to_s
    if five_digits.length != 5
      five_digits.rjust(5, '0')
    end
    five_digits
  end
end
