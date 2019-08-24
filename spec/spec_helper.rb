# frozen_string_literal: true

require 'pry-byebug'
require 'require_all'
require_all 'source'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.warnings = true
  config.default_formatter = 'doc'
  config.profile_examples = 10
  config.order = :random
end
