require "minitest/autorun"
require "webmock/minitest"
require "minitest/reporters"
if ENV["CI"] == "true"
  Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new
else
  Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new
end

require "zippopotamus"
