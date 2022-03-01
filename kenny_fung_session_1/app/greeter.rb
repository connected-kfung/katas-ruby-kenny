class Greeter
  def initialize(time_of_day = nil)
    @time_of_day = time_of_day
  end

  def greet(name)
    formatted_name = name.strip.capitalize

    if morning?
      return "Good morning #{formatted_name}"
    elsif evening?
      return "Good evening #{formatted_name}"
    else
      return "Hello #{formatted_name}"
    end
  end

  private

  def morning?
    six_am = Time.parse('6am')
    noon = Time.parse('12pm')

    @time_of_day && @time_of_day > six_am && @time_of_day < noon
  end

  def evening?
    six_pm = Time.parse('6pm')
    ten_pm = Time.parse('10pm')

    @time_of_day && @time_of_day > six_pm && @time_of_day < ten_pm
  end
end
