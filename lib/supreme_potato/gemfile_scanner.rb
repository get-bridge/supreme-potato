require_relative 'scanner'

class GemfileScanner
  include Scanner

  FILENAME = 'Gemfile'.freeze
  DEFAULT_ENTRY = {
    'package-ecosystem' => 'bundler',
    'schedule' => {
      'interval' => 'weekly'
    },
    'open-pull-requests-limit' => 5
  }.freeze

  def initialize
    @package_ecosystem = 'bundler'
    @filename = FILENAME
    @default_entry = DEFAULT_ENTRY
  end
end
