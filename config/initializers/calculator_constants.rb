# frozen_string_literal: true

module CalculatorConstants
  AT_MATUARITY = 'at_matuarity'.freeze

  INTEREST_PAID_PERIOD = [
    ['Monthly', 'monthly'],
    ['Quarterly', 'quarterly'],
    ['Annually', 'annually'],
    ['At Matuarity', 'at_matuarity']
  ].freeze

  PERIOD_VALUES = {
    'monthly' => 1,
    'quarterly' => 3,
    'annually' => 12
}.freeze
end
