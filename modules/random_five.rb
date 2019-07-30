module RandomFive
  def key_generate
    five_digits = rand(99999).to_s
    five_digits.rjust(5, '0')
  end
end
