require 'pry'

def nyc_pigeon_organizer(data)
  
#with knowledge of what the data looks like already

data_by_names = data.each_with_object({}) do |(key, value), base_array|
  value.each do |inner_key, names|
    names.each do |name|
      if !base_array[name]
        base_array[name] = {}
      end
      if !base_array[name][key]
        base_array[name][key] = []
      end
      base_array[name][key] << inner_key.to_s
    end     
  end   
end 



end
