require 'pry'

def nyc_pigeon_organizer(data)

# write your code here!
  pigeons = {"Theo" => {},
             "Peter Jr." => {},
             "Lucky" => {},
             "Ms. K" => {},
             "Queenie" => {},
             "Andrew" => {},
             "Alex" => {}}




  data.each do |descriptor, value| #keys from data are colour, gender, lives
    value.each do |info, list_of_names|
      list_of_names.each do |name|

        if pigeons.has_key?(name) == nil # checks if the pigeons hash has all necessary names added
          #if the name check comes up false:
          pigeons[name] = {} #key => info.to_s} #creates an entry for the missing pigeon plus key value data
          pigeons[name][descriptor] = [info.to_s] #creates new key and assigns a describe value for exsisting name only
        else

          if pigeons[name].has_key?(descriptor) == nil   # checks if each pigeon has existing descriptors
            #if the descriptor check comes up false:
            pigeons[name][descriptor] = []  #adds an empty array for new descriptor keys

          end

        end







      end
    end
  end

  #binding.pry

  pigeons

end
