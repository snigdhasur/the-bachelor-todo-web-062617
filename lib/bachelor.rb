def get_first_name_of_season_winner(data, season)
  array = []
  data.each do |season_input, contestant_data|
    if season_input == season
     contestant_data.each do |attributes|
       attributes.each do |elements, value2|
         if elements == "status" && value2 == "Winner"
            array.push(attributes["name"].split(" ")[0])
          end

        end
    end
  end
end
return array[0]
end

def get_contestant_name(data, occupation)
  array = []
   data.each do |season_input, contestant_data|
      contestant_data.each do |attributes|
        attributes.each do |elements, value2|
          if elements == "occupation" && value2 == occupation
             array.push(attributes["name"])
           end

        end
     end
   end
 return array[0]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  array = []
 data.each do |season_input, contestant_data|
    contestant_data.each do |attributes|
      attributes.each do |elements, value2|
        if elements == "hometown" && value2 == hometown
           array.push(attributes["name"])
         end

      end
   end
 end
return array.length
end

def get_occupation(data, hometown)
  array = []
 data.each do |season_input, contestant_data|
    contestant_data.each do |attributes|
      attributes.each do |elements, value2|
        if elements == "hometown" && value2 == hometown
           array.push(attributes["occupation"])
         end

      end
   end
 end
return array[0]
end

def get_average_age_for_season(data, season)
  array = []
 data.each do |season_input, contestant_data|
   if season_input == season
    contestant_data.each do |attributes|
      attributes.each do |elements, value2|
        if elements == "age"
           array.push(value2.to_i)
         end

       end
   end
 end
end
return (array.reduce(:+).to_f / array.length.to_f).round
end
