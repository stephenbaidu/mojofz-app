class CreateProfitEvolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :profit_evolutions do |t|
      t.decimal :revenue, precision: 16, scale: 4
      t.decimal :supplier_cost, precision: 16, scale: 4
      t.decimal :marketing_cost, precision: 16, scale: 4

      t.timestamps
    end
  end
end
