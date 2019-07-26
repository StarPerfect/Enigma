class Key
  attr_reader :key_array

  def initialize
    @key_array = []
  end

  def generate
    5.times do
      @key_array << rand(9)
    end
  @key_array
  end

  def get_key(index)
    (generate[index].to_s + generate[index + 1].to_s).to_i
  end

  def a_key
    get_key(0)
  end

  def b_key
    get_key(1)
  end

  def c_key
    get_key(2)
  end

  def d_key
    get_key(3)
  end
end
