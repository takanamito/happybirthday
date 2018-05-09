module HappyBirthday
  class Age < Base
    attr_reader :birthday, :present_day

    # HappyBirthday::Age initializer
    # @param birthday [HappyBirthday::Birtyday] birthday object
    # @param present_day [Date] a day for calculating age
    # @return [HappyBirthday::Age]
    def initialize(birthday:, present_day: Date.today)
      @birthday = birthday
      @present_day = present_day
    end

    # Get age
    # @return [Integer]
    def years_old
      format = "%Y%m%d"
      (present_day.strftime(format).to_i - birthday.date.strftime(format).to_i) / 10000
    end

    # Get HappyBirthday::Age object which has specific date you passed
    # @param date [Date,String] Date or date like String (ex."2018-05-08")
    # @return [HappyBirthday::Age]
    def at(date)
      Age.new(birthday: birthday, present_day: to_date(date))
    end

    # Get HappyBirthday::Age object which has past date
    # @param year [Integer] number of years
    # @return [HappyBirthday::Age]
    def years_before(year = 0)
      Age.new(birthday: birthday, present_day: present_day.prev_year(year))
    end

    # Get HappyBirthday::Age object which has future date
    # @param year [Integer] number of years
    # @return [HappyBirthday::Age]
    def years_after(year = 0)
      Age.new(birthday: birthday, present_day: present_day.next_year(year))
    end
  end
end
