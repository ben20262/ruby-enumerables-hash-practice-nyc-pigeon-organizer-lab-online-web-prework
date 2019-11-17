def nyc_pigeon_organizer(data)
  pigeon_bois = {}
  magic = data.keys
  data.each do |att_key, att_value|
    mana = attribute.keys
    attribute.each do |spec_key, spec_value|
      spec_value.each do |name|
        if !pigeon_bois.has_key?(name)
          magic.each do |key|
            pigeon_bois[name] = {key => []}
            
          end
          
        end
      end
    end
  end
  puts pigeon_bois
end
