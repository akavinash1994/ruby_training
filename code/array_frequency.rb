class ArrayFrequency
  def initialize(arg)
    @arr = arg
  end

  def count
    freq = Hash.new { 0 }
    @arr.each do |e|
      freq[e] += 1
    end
    freq
  end
end
