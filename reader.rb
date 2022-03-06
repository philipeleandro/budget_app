require 'csv'

CSV.foreach("test.csv") do |row|
  if row[1] == nil && row[2] == nil && row[3] == nil
    row = [row[0]]
    p row   
  elsif row[0] == "Insumo" && row[1] == "Descrição" && row[2] == "Unidade" && row[3] == "Valor (R$)"
  elsif
   p row
 end
end