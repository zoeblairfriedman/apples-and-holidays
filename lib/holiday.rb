require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
  if season == :winter
    holidays.each do |holiday, supplies|
      supplies << supply
    end
  end
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies|
        if holiday == :memorial_day
          supplies << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

  
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday_data_array|

    puts season.to_s.capitalize << ":" 
      holiday_data_array.each do |holiday, supplies|
      holiday_word_array = holiday.to_s.gsub("_"," ").split(" ")
      #check to see if the array is longer than 1
        if holiday_word_array.length > 1
          holiday_word_array.each do |word|
            word.capitalize!
          end      
          puts "  " + holiday_word_array.join(" ") << ": #{supplies.join(", ")}"
        else
          holiday_word_array = holiday_word_array.join()
          puts "  #{holiday_word_array.capitalize!}: #{supplies.join(", ")}"
        end
      end
  end
  end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array_of_BBQ_holidays = []
  holiday_hash.each do |season, holiday_data_array|
    
    if holiday_data_array.values.join.include?("BBQ")
      array_of_BBQ_holidays << holiday_data_array.keys
    end
  end
  array_of_BBQ_holidays.flatten
end







