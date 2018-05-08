require "happy_birthday/version"
require "happy_birthday/base"
require "happy_birthday/birthday"
require "happy_birthday/age"

module HappyBirthday
  def self.born_on(birthday)
    HappyBirthday::Birthday.new(birthday)
  end
end
