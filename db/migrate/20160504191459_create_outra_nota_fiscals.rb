class CreateOutraNotaFiscals < ActiveRecord::Migration
  def change
    create_table :outra_nota_fiscals do |t|
      t.string :cliente
      t.string :endereco

      t.timestamps
    end
  end
end
