def nyc_pigeon_organizer(data)
  pigeon_bois = {}
  names = []
  keys1 = []
  keys2 = []
  keys1 = data.keys
  data.each do |att|
    keys2 << att.keys
    att.each do |spec|
      names.concat(spec.values)
    end
  end

end
