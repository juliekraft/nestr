# require 'rillow'
Apartment.destroy_all
Favorite.destroy_all
User.destroy_all

addresses = [
  {street: "1065 Fulton St", city: "Brooklyn, NY"},
  {street: "2520 Hanover Ave", city: "Richmond, VA"},
  {street: "440 Madison St", city: "Brooklyn, NY"},
  {street: "300 Metropolitan Ave", city: "Brooklyn, NY"},
  {street: "2518 Kensington Ave", city: "Richmond, VA"},
  {street: "7142 Sunnyhill Dr", city: "Mechanicsville, VA"}
]

addresses.each do |address|
  rillow = Rillow.new('X1-ZWz1bb4i44az9n_7oq0o')  
  result = rillow.get_search_results(address[:street], address[:city])
  result.to_hash
  Apartment.create(
      street: result["response"][0]["results"][0]["result"][0]["address"][0]["street"][0],
      city: result["response"][0]["results"][0]["result"][0]["address"][0]["city"][0],
      state: result["response"][0]["results"][0]["result"][0]["address"][0]["state"][0],
      zipcode: result["response"][0]["results"][0]["result"][0]["address"][0]["zipcode"][0],
      longitude: result["response"][0]["results"][0]["result"][0]["address"][0]["longitude"][0],
      latitude: result["response"][0]["results"][0]["result"][0]["address"][0]["latitude"][0],
      region: result["response"][0]["results"][0]["result"][0]["localRealEstate"][0]["region"][0]["name"],
      price: 2000.0,
      bedrooms: 3,
      bathrooms: 1,
      photo: "http://placekitten.com/200/200"
    )
end

# u1 = User.create (name: "test dummy", email: "test@dummy.com", password: "11111111")


# rillow = Rillow.new('X1-ZWz1bb4i44az9n_7oq0o')
# result = rillow.get_search_results('386 Decatur St','Brooklyn, NY')
# result = rillow.get_search_results('#{address}','#{city, ST}')
# result.to_hash 
# street = result["response"][0]["results"][0]["result"][0]["address"][0]["street"][0]
# city = result["response"][0]["results"][0]["result"][0]["address"][0]["city"][0]
# state = result["response"][0]["results"][0]["result"][0]["address"][0]["state"][0]
# zipcode = result["response"][0]["results"][0]["result"][0]["address"][0]["zipcode"][0]
# longitude = result["response"][0]["results"][0]["result"][0]["address"][0]["longitude"][0]
# latitude = result["response"][0]["results"][0]["result"][0]["address"][0]["latitude"][0]
# region = result["response"][0]["results"][0]["result"][0]["localRealEstate"][0]["region"][0]["name"]

# a1 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )

# a2 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )

# a2 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )

# a2 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )

# a1 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )

# a1 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )
# a1 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )
# a1 = Apartment.create!(
#   street: street,
#   city: city,
#   state: state,
#   zipcode: zipcode,
#   longitude: longitude,
#   latitude: latitude,
#   region: region,
#   price: 1600.00,
#   bedrooms: 1,
#   bathrooms: 1,
#   photo: ""
#   )