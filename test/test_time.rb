# encoding: utf-8

require 'helper'

class TestFakerTime < Test::Unit::TestCase
  def setup
    @tester = FFaker::Time
  end

  def test_date
    date_regex = /\A\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} [-|+]\d{4}\z/
    assert_match(date_regex, @tester.date)
  end

  def test_date_hours_and_minutes
    assert_match('04:20:00', @tester.date(hours: 4, minutes: 20))
  end

  def test_datetime
    date_regex = /\A\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} [-|+]\d{4}\z/
    assert_match(date_regex, @tester.datetime)
  end

  def test_datetime_hours_and_minutes
    assert_match('04:20:00', @tester.datetime(hours: 4, minutes: 20))
  end

  def test_month
    month_regex = /\A(?:January|February|March|April|May|June|July|August|September|October|November|December)\z/
    assert_match(month_regex, @tester.month)
  end
end
