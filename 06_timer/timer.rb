class Timer
  #write your code here

  # these are the get functions, also called readers
  attr_reader :seconds
  attr_reader :time_string

  @time_string

  def initialize()
    @seconds = 0
    @time_string = set_time_string(@seconds)
    puts @time_string
  end

  # the equals sign makes it a designated set function
  def seconds=(num)
    @seconds = num
    @time_string = set_time_string(num)
  end

  def set_time_string(num)
    seconds = num % 60
    puts seconds
    hours = num / 3600
    minutes = (num - 3600 * hours) / 60

    @time_string = padded(hours) + ":" + padded(minutes) +
      ":" + padded(seconds)
  end

  def padded(num)
    if num / 10 == 0
      return "0#{num}"
    end
    return "#{num}"
  end
end
