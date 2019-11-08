def nyc_pigeon_organizer(data)

  pigeons = {"Theo" => {},
            "Peter Jr." => {},
            "Lucky" => {},
            "Ms. K" => {},
            "Queenie" => {},
            "Andrew" => {},
            "Alex" => {}}
  # write your code here!

  data.each do |key, value| #keys from data are colour, gender, lives
    value.each do |describe, array|
      array.each do |name|

        if pigeons.has_key?(name) # checks if the pigeons hash has all necessary names added
          if pigeons[name].has_key?(key) # checks if each pigeons has key

            pigeons[name][key] << describe.to_s
            #if the name
          else
            pigeons[name][key] = [describe.to_s]
          end

        else
          pigeons[name] = {key => describe.to_s} #creates an entry for the missing pigeon plus key value data
        end

      end
    end
  end

  pigeons
  
end
