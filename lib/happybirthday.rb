require "happybirthday/version"
require "happybirthday/base"
require "happybirthday/birthday"
require "happybirthday/age"

module Happybirthday
  def self.born_on(birthday)
    Happybirthday::Birthday.new(birthday)
  end
end
