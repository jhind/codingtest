def get_address_string(address)

  # Check if values exist and format accordingly
  sub_house_name = address["subpremise"] == nil ? "" : "#{address['subpremise']}, "
  sub_house_name += address["house_name"] == nil ? "" : "#{address['house_name']},"
  house_num_street_1 = address["house_number"] == nil ? "#{address['street_line_1']}," : "#{address['house_number']} #{address['street_line_1']},"
  street_2 = address["street_line_2"] == nil ? "" : "#{address['street_line_2']},"
  # Possibly not necessary to test for this value
  town_or_city = address["town_or_city"] == nil ? "" : "#{address['town_or_city']},"
  region = address["region"] == nil ? "" : "#{address['region']},"

  # Construct address string
  address = ""

  unless sub_house_name == ""
    address = sub_house_name.rstrip + "\n"
  end

  address += house_num_street_1 + "\n"

  unless street_2 == ""
    address += street_2 + "\n"
  end

  unless town_or_city == ""
    address += town_or_city + "\n"
  end

  unless region == ""
    address += region + "\n"
  end

  address += "#{address['postcode']}" + "\n\n"

end
