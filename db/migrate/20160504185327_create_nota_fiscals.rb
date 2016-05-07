class CreateNotaFiscals < ActiveRecord::Migration
  def change
    create_table :nota_fiscals do |t|
      t.string :cliente, :valor
      t.timestamps
    end
  end
end
