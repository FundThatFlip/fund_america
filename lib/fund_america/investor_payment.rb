module FundAmerica
  class InvestorPayment
    class << self

      # End point: https://apps.fundamerica.com/api/investor_payments (GET)
      # Usage: FundAmerica::InvestorPayment.list
      # Output: Returns list of investor_payments
      def list
        API::request(:get, FundAmerica.base_uri + 'investor_payments')
      end

      # End point: https://apps.fundamerica.com/api/investor_payments/:id (GET)
      # Usage: FundAmerica::InvestorPayment.details(investor_payment_id, "&_expand[<attribute_name>]=1")
      # Output: Returns the details of an investor_payment with matching id, and special request options
      def details(investor_payment_id, request_opitions = "")
        API::request(:get, FundAmerica.base_uri + "investor_payments/#{investor_payment_id}" + "#{request_options}")
      end

    end
  end
end