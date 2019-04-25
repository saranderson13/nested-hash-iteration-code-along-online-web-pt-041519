require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
  
def remove_strawberry(contacts)
  contacts.each do |person, contact_details|
    contact_details.each do |attribute, data|
      data.delete_if { |ice_cream| ice_cream == "strawberry" } if person == "Freddy Mercury" && attribute == :favorite_ice_cream_flavors
    end
  end
end
  
# ALTERNATE METHOD  
# def remove_strawberry(contacts)
#   contacts.each do |person, contact_details|
#     contact_details[:favorite_ice_cream_flavors].delete("strawberry") if person == "Freddy Mercury"
#   end
# end
