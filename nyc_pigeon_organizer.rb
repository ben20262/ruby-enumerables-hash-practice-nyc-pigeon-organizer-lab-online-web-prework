def nyc_pigeon_organizer(data)
  pigeon_bois = {}
  names = []
  data.each_value do |att|
    att.each_value do |spec_value|
      names.concat(spec_value)
    end
  end
  names.uniq!
  names.each do |bird|
    pigeon_bois[bird] = attributes(data, bird)
  end
end

def attributes(data, name)
  hash = {}
  pigeon = {}
  data.each_pair do |att_key, att_value|
    spec = []
    att_value.each_pair do |spec_key, spec_value|
      if spec_value.include?(name)
        spec << spec_key.to_s
      end
    end
    pigeon[att_key] = spec
  end
  pigeon
end
