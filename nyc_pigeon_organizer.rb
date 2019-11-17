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

def attributes(data, name)
  hash = {}
  data.each_pair do |att_key, att_value|
    spec = []
    att_value.each_pair do |spec_key, spec_value|
      if spec_value.includes?(name)
        spec << spec_key.to_s
      end
    end
    hash[name] = {
      att_key => spec
    }
  end
end
