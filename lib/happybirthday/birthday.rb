module Happybirthday
  class Birthday < Base
    attr_reader :date

    # Happybirthday::Birtyday initializer
    # @param birthday [Date,String] birthday Date or date like String (ex."2018-05-08")
    # @return [Happybirthday::Birtyday]
    def initialize(birthday)
      @date = to_date(birthday)
    end

    # Judge whether today is birthday or not
    # @return [Boolean]
    def today?
      today = Date.today
      date.month == today.month && date.day == today.day
    end

    # Get Happybirthday::Age object
    # @return [Happybirthday::Age]
    def age
      Age.new(birthday: self)
    end
  end
end
