require 'date'

module HappyBirthday
  class Base
    protected

    def to_date(date)
      return date if date.is_a?(Date)
      Date.parse(date)
    end
  end
end
