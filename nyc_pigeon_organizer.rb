require 'pry'

def nyc_pigeon_organizer(data)

# write your code here!
  pigeons = {}

    #{}"Theo" => {},
            #{}"Peter Jr." => {},
            #{}"Lucky" => {},
            #{}"Ms. K" => {},
            #{}"Queenie" => {},
            #{}"Andrew" => {},
            #{}"Alex" => {}


  data.each do |key, value| #keys from data are colour, gender, lives
    value.each do |describe, array|
      array.each do |name|

        if pigeons.has_key?(name) # checks if the pigeons hash has all necessary names added
          #if the name check comes up true
          if pigeons[name].has_key?(key) # checks if each pigeons has key

            pigeons[name][key] << describe.to_s #adds describe value for exsisting name key

          else

            pigeons[name][key] = [describe.to_s] #creates new key and assigns a describe value for exsisting name only

          end

        else
          #if the name check comes up false
          pigeons[name] = {key => describe.to_s} #creates an entry for the missing pigeon plus key value data
        end

      end
    end
  end

  #binding.pry

  pigeons

end
