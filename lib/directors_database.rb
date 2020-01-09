require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

require directors_database

def directors_totals(nds)
   result = {}
   director_index = 0 
   while director_index < nds.count do
     movie_index = 0 
     gross_total = 0 
   while movie_index < nds[director_index][:movies].length do
       gross_total += nds[director_index][:movies][movie_index][:worldwide_gross]
       movie_index += 1 
     end
     result[nds[director_index][:name]] = gross_total
     director_index += 1 
   end
   result
 end
 

 



 







