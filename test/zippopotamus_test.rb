require "test_helper"

class ZippopotamusTest < Minitest::Test
  def test_should_exist
    assert Object.const_defined?(:Zippopotamus)
  end

  def test_should_respond_to_by_postal_code
    assert Zippopotamus.respond_to?(:by_postal_code)
  end

  def test_by_postal_code_should_default_to_us
    skip("Zippopotamus.by_postal_code('80027')")
  end

  def test_should_respond_to_by_postal_code
    assert Zippopotamus.respond_to?(:by_zip)
  end

  def test_by_zip_should_alias_by_postal_code
    skip("Zippopotamus.by_zip('80027')")
  end

  def test_by_postal_code_should_support_other_countries
    skip("Zippopotamus.by_postal_code('4400', 'AU')")
  end

  def test_by_postal_code_should_raise_an_error_when_not_found
    skip("Zippopotamus.by_zip('80027', 'CA')")
  end

  def test_should_respond_to_by_name
    assert Zippopotamus.respond_to?(:by_name)
  end

  def test_by_name_should_default_to_us
    skip("Zippopotamus.by_name('Leesburg', 'VA')")
  end

  def test_by_name_should_support_other_countries
    skip("Zippopotamus.by_name('Sumburgh', 'SCT', 'GB')")
  end

  def test_by_name_should_raise_an_error_when_not_found
    skip("Zippopotamus.by_name('Fake City', 'VA', 'US')")
  end
end
