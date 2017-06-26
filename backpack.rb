class Backpack
  def initialize(attributes)
    @attributes = attributes
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    pants_shirt_minimum

    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    else
      @items
    end

    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def pants_shirt_minimum
    @items << 'pants'
    @items << 'shirt'
  end

  def packing_list_summary
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
