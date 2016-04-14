def nyc_pigeon_organizer(data)
  # write your code here!
  all_names = []
  pigeon_list = {}

  data.each do |key, value|
    value.each do |k,v|
      v.each do |name|
        all_names.push(name.to_s)
      end
    end
  end
  all_names.uniq!
all_names.each do |x|
  pigeon_list[x] = {}
  pigeon_list[x][:color] = []
  pigeon_list[x][:gender] = []
  pigeon_list[x][:lives] = []
  #:color, :gender, :lives
end

data.each do |x,y|
  y.each do |key, value|
    value.each do |name|
      all_names.each do |pigeon|
      if name == pigeon && pigeon_list[pigeon][x]
        pigeon_list[pigeon][x].push(key.to_s)
      end
      end
    end
  end
end
pigeon_list
end