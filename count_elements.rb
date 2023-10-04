class CountElements
  def initialize(array)
    @array = array
  end

  def perform
    element_count = Hash.new(0)

    @array.each do |element|
      element_count[element] += 1
    end

    element_count
  end
end
