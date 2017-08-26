class AddStatusTypeToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :status_type, :string
  end
end
