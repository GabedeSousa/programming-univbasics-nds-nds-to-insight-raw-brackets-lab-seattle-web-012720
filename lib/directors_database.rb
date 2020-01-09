require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

def directors_totals(nds)
  result = {}
   nil		   i = 0
   while i < nds.size do
     director = nds[i]
     result[director[:name]] = gross_for_director(director)
     i += 1
   end
   result
 end		

 



 







