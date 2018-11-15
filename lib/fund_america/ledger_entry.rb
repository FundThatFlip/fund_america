module FundAmerica
  class LedgerEntry
    class << self
      # End point: https://apps.fundamerica.com/api/ledger_entries/:id (GET)
      # Usage: FundAmerica::LedgerEntry.details(:id)
      # Output: Returns individual ledger entry
      def details(ledger_entry_id)
        API::request(:get, "ledger_entries/#{ledger_entry_id}")
      end

   	end
  end
end 