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

    


  data.each do |key, value| #keys from data are colour, gender, lives
    value.each do |info, list_of_names|
      list_of_names.each do |name|

        if pigeons.has_key?(name) == nil # checks if the pigeons hash has all necessary names added
          #if the name check comes up false
          pigeons[name] = {} #key => info.to_s} #creates an entry for the missing pigeon plus key value data
        end

        #if pigeons[name].has_key?(key)   # checks if each pigeons has key

          #pigeons[name][key] = []  #adds describe value for exsisting name key

        #end

        pigeons[name][key] = [info.to_s] #creates new key and assigns a describe value for exsisting name only



      end
    end
  end

  #binding.pry

  pigeons

end
