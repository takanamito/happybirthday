require 'yaml'

module Happybirthday
  class Age < Base
    attr_reader :birthday, :present_day

    # Happybirthday::Age initializer
    # @param birthday [Happybirthday::Birtyday] birthday object
    # @param present_day [Date] a day for calculating age
    # @return [Happybirthday::Age]
    def initialize(birthday:, present_day: Date.today)
      @birthday = birthday
      @present_day = present_day
    end

    # Get age
    # @return [Integer] if Age.present_day is after birthday
    # @return [nil] if Age.present_day is before birthday
    def years_old
      return nil if present_day < birthday.date
      format = "%Y%m%d"
      (present_day.strftime(format).to_i - birthday.date.strftime(format).to_i) / 10000
    end

    # Whether age is adult or not
    # @param locale [Symbol] a locale to determine country
    # @return [Boolean] if Age is adult it returns true
    def adult?(locale)
      adult_ages = YAML.load_file('lib/happybirthday/data/adult_age.yml')
      years_old >= adult_ages[locale.to_s]
    end

    # Get Happybirthday::Age object which has specific date you passed
    # @param date [Date,String] Date or date like String (ex."2018-05-08")
    # @return [Happybirthday::Age]
    def at(date)
      Age.new(birthday: birthday, present_day: to_date(date))
    end

    # Get Happybirthday::Age object which has past date
    # @param year [Integer] number of years
    # @return [Happybirthday::Age]
    def years_before(year = 0)
      Age.new(birthday: birthday, present_day: present_day.prev_year(year))
    end

    # Get Happybirthday::Age object which has future date
    # @param year [Integer] number of years
    # @return [Happybirthday::Age]
    def years_after(year = 0)
      Age.new(birthday: birthday, present_day: present_day.next_year(year))
    end
  end
end
