def nyc_pigeon_organizer(data)
  pidgeon_list = {}
  pidgeon_name_array = []
  data.each do |info_label, info_data|
    info_data.each do |key, value_array|
      value_array.each do |value|
        pidgeon_name_array << value
        pidgeon_list[value] = {}
      end

    end
  end
  pidgeon_name_array.uniq!

  pidgeon_name_array.each do |name|
    data.each do |info_label, info_data|
      pidgeon_list[name][info_label] = []
      info_data.each do |key, value_array|
        if value_array.include?(name) == true
          pidgeon_list[name][info_label] << key.to_s
        end
      end
    end
  end
  pidgeon_list
end
