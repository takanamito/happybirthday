require 'date'

module Happybirthday
  class Base
    protected

    # Convert to Date object if arg is String object
    # @param date [Date,String] Date or date like String (ex."2018-05-08")
    # @return [Date]
    def to_date(date)
      return date if date.is_a?(Date)
      Date.parse(date)
    end
  end
end
