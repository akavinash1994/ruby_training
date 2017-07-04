class Pattern
  def initialize(height)
    @height = height
  end

  def generate_pattern
    str = ''
    (1..@height).each do |row|
      str += ('*' * row) + '\n'
    end
    str.strip
  end
end
