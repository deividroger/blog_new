json.array!(@outra_nota_fiscals) do |outra_nota_fiscal|
  json.extract! outra_nota_fiscal, :id, :cliente, :endereco
  json.url outra_nota_fiscal_url(outra_nota_fiscal, format: :json)
end
