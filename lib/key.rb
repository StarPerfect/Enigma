class Key
  def generate
    key = []
    5.times do
      key << rand(9)
    end
    key
  end
end
