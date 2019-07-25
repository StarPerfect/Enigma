class Key
  def initialize(places)
    @places = places
  end

  def self.generate
    key = 9
    binding.pry
    key.to_s.rjust(@places - 1, '9')
    key.to_i
  end
end
