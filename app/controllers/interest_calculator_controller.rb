# frozen_string_literal: true

class InterestCalculatorController < ApplicationController
  def index
    @interest_paid_period = CalculatorConstants::INTEREST_PAID_PERIOD
  end

  def calculate
    @service_calculator = CalculateTermAmount.new(params)
    @service_calculator.call

    update_total_amount
  end

  private

  def update_total_amount
    render turbo_stream:
      turbo_stream.update('total-calculation',
        partial: 'interest_calculator/total_amount',
        locals: { service_calculator: @service_calculator })
  end
end
