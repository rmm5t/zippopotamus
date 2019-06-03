require "test_helper"

class PlaceTest < Minitest::Test
  def setup
    @place = Zippopotamus::Place.new(
      "longitude"            => "-75.6398",
      "latitude"             => "40.0978",
      "post code"            => "19425",
      "place name"           => "Chester Springs",
      "state"                => "Pennsylvania",
      "state abbreviation"   => "PA",
      "country"              => "United States",
      "country abbreviation" => "US",
    )
  end

  def test_should_mimic_a_read_only_hash
    assert_equal "19425",           @place["post code"]
    assert_equal "Pennsylvania",    @place["state"]
    assert_nil @place["bogus"]
  end

  def test_should_convert_keys_with_spaces_to_underscores
    assert_equal "19425",           @place["post_code"]
    assert_equal "PA",              @place["state_abbreviation"]
    assert_nil @place["something_else"]
  end

  def test_should_support_indifferent_access
    assert_equal "19425",           @place[:post_code]
    assert_equal "PA",              @place[:state_abbreviation]
    assert_equal "US",              @place[:country_abbreviation]
  end

  def test_should_support_method_syntax
    assert_equal "19425",           @place.post_code
    assert_equal "PA",              @place.state_abbreviation
    assert_equal "Chester Springs", @place.place_name
    assert_equal "-75.6398",        @place.longitude
  end

  def test_should_support_method_aliases
    assert_equal "19425",           @place.postal_code
    assert_equal "19425",           @place.zip
    assert_equal "Chester Springs", @place.name
    assert_equal "Chester Springs", @place.city
  end

  def test_should_convert_a_full_zippopotamus_api_response_into_an_array_of_places
    skip("Zippopotamus::Place.construct_from(api_response)")
  end
end
