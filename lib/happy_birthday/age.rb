module HappyBirthday
  class Age < Base
    attr_reader :birthday, :present_day

    def initialize(birthday:, present_day: Date.today)
      @birthday = birthday
      @present_day = present_day
    end

    def years_old
      format = "%Y%m%d"
      (present_day.strftime(format).to_i - birthday.date.strftime(format).to_i) / 10000
    end

    def at(date)
      Age.new(birthday: birthday, present_day: to_date(date))
    end

    def years_before(year = 0)
      Age.new(birthday: birthday, present_day: present_day.prev_year(year))
    end

    def years_after(year = 0)
      Age.new(birthday: birthday, present_day: present_day.next_year(year))
    end
  end
end
