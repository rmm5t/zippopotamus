require "json"

module Zippopotamus
  class Place
    def initialize(values = {})
      @values = values
      add_readers(values.keys)
    end

    def [](key)
      @values[key.to_s.downcase.gsub("_", " ")]
    end

    def to_s
      JSON.pretty_generate(@values)
    end

    def inspect
      "#<#{self.class}:0x#{self.object_id.to_s(16)}> JSON: " + to_s
    end

    # def self.construct_from(api_body)
    # end

    private

    METHOD_ALIASES = {
      place_name: [:name, :city],
      post_code:  [:postal_code, :zip],
    }

    def add_readers(keys)
      singleton_class.instance_eval do
        keys.each do |key|
          define_method(key.to_s.downcase.gsub(" ", "_")) { @values[key] }
        end

        METHOD_ALIASES.each do |method, aliases|
          aliases.each { |a| alias_method a, method } if method_defined?(method)
        end
      end
    end
  end
end
