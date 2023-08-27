# frozen_string_literal: true

class CalculateTermAmount
  attr_accessor :errors, :total_amount

  attr_reader :principle, :interest_rate, :investment_term, :interest_paid

  def initialize(params)
    @principle = decimal_format(params[:principle])
    @interest_rate = decimal_format(params[:interest_rate])
    @investment_term = integer_format(params[:investment_term])
    @interest_paid = params[:interest_paid]

    @total_amount = nil
    @errors = {}
  end

  def call
    period_in_months = find_period_in_months
    amount_calculation(period_in_months)
  end

  def successful?
    !errors.any?
  end

  private

  def find_period_in_months
    return (investment_term * 12) if interest_paid == CalculatorConstants::AT_MATUARITY

    CalculatorConstants::PERIOD_VALUES[interest_paid]
  end

  # Since code challenge is based on simple interest formula, A = P * T * R / 100.
  def amount_calculation(period_in_months)
    begin
      @total_amount = principle + (principle * period_in_months * interest_rate / 1200)
    rescue Exception => e
      Rails.logger.error("Calculation Errors: #{e.message}")
      errors.store(:message, "Calculation Error")
    end
  end

  def integer_format(num)
    num&.to_i
  end

  def decimal_format(num)
    return nil unless num.present?

    BigDecimal(num)
  end
end
