def nyc_pigeon_organizer(data)
  pigeon_bois = {}
  magic = data.keys
  data.each do |attribute|
    mana = attribute.keys
    attribute.each do |spec|
      names = spec.values
      names.each do |name|
        if !pigeon_bois.has_key?(name)
          magic.each do |key|
            pigeon_bois[name] = {key => []}
            
        end
      end
    end
  end
end
