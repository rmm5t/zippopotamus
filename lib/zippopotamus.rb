require "zippopotamus/version"
require "zippopotamus/place"

module Zippopotamus
  def self.by_postal_code(postal_code, country = "us")
  end
  singleton_class.send(:alias_method, :by_zip, :by_postal_code)

  def self.by_name(city, state, country = "us")
  end
end
