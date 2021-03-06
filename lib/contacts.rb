require 'pry'

#  This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla", "strawberry"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }


## Iteration solution -- passes spec
def remove_strawberry(contacts)
  contacts.each do | person, data |
    if person == "Freddy Mercury"
      data.each do | attribute, value |
        if attribute == :favorite_ice_cream_flavors
          value.delete_if { | flavor | flavor == "strawberry" }
        end
      end
    end
  end
end

##Direct access solution -- passes spec
# def remove_strawberry(contacts)
#   contacts["Freddy Mercury"][:favorite_ice_cream_flavors].delete_if { | flavor | flavor == "strawberry" }
#   contacts
# end

## Solution from codealong-- passes spec but nonetheless incorrect (removes any instance of strawberry, not just for Freddy Mercury ##
##
# def remove_strawberry(contacts)
#   contacts.each do | person, contact_details_hash |
#     contact_details_hash.each do | attribute, data |
#       if attribute == :favorite_ice_cream_flavors
#         data.delete_if {|ice_cream| ice_cream == "strawberry"}
#       end
#     end
#   end
# end
