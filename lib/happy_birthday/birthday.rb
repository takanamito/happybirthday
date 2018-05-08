module HappyBirthday
  class Birthday < Base
    attr_reader :date

    def initialize(birthday)
      @date = to_date(birthday)
    end

    def today?
      today = Date.today
      date.month == today.month && date.day == today.day
    end

    def age
      Age.new(birthday: self)
    end
  end
end
