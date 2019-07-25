class Key
  def generate
    key = []
    5.times do
      key << rand(9)
    end
    key
  end

  def a_key
    a = generate[0].to_s + generate[1].to_s
    a.to_i

    # DRY UP THIS CODE SO NOT REPEATNG a = get_offset(0)
  end

  def b_key
    a = generate[1].to_s + generate[2].to_s
    a.to_i
  end

  def c_key
    a = generate[2].to_s + generate[3].to_s
    a.to_i
  end

  def d_key
    a = generate[3].to_s + generate[4].to_s
    a.to_i
  end
end
