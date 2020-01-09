require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

def directors_totals(nds)
   result = {}		   
director_index = 0
   while director_index < nds.length do
     current_director = nds[director_index][:name]
     result[current_director] = gross_for_director( nds[director_index] )
     director_index += 1
   end
   result
   



 







