class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :good
      t.decimal :price
      t.date :date
      t.string :city

      t.timestamps
    end
  end
end
