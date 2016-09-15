require "minitest/autorun"
require "version_parser"

class VersionParserTest < Minitest::Test
  def setup
    @v0_0_1 = VersionParser.new(0, 0, 1)
    @v0_1_0 = VersionParser.new(0, 1, 0)
    @v1_0_0 = VersionParser.new(1, 0, 0)
    @v1_0_1 = VersionParser.new(1, 0, 1)
    @v1_1_0 = VersionParser.new(1, 1, 0)
    @v2_0_0 = VersionParser.new(2, 0, 0)
  end

  def test_parse_should_return_a_version_parser_object
    version = VersionParser.parse("v0.1.2")
    assert_equal [0, 1, 2], [version.major, version.minor, version.patch]

    version = VersionParser.parse("v2.3.4")
    assert_equal [2, 3, 4], [version.major, version.minor, version.patch]
  end

  def test_should_compare_bigger_then
    assert @v2_0_0 > @v1_1_0
    assert @v1_1_0 > @v1_0_1
    assert @v1_0_0 > @v0_1_0
    assert @v0_1_0 > @v0_0_1
    refute @v0_1_0 > @v1_0_0
  end

  def test_should_compare_bigger_or_equal_then
    assert @v2_0_0 >= VersionParser.new(2, 0, 0)
    assert @v2_0_0 >= @v1_1_0
  end
end
