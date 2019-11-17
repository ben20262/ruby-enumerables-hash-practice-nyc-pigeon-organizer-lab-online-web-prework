def nyc_pigeon_organizer(data)
  pigeon_bois = {}
  names = []
  keys1 = []
  keys2 = []
  keys1 = data.keys
  x = 0
  y = 0
  data.each do |att|
    keys2 << att.keys
    att.each do |spec|
      keys2[x][y].to_s
      names.concat(spec.values)
    end
  end
  names = names.uniq
  this = [keys1, keys2].to_h
  names.each do |name|
    pigeon_bois[name] = this
  end
  puts pigeon_bois
  pigeon_bois
end
