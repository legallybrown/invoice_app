class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :date
      t.string :client

      t.timestamps
    end
  end
end
