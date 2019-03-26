
def get_first_name_of_season_winner(data, season)
  data.each do |season_num,contestants|
    if season == season_num
      contestants.each do |array|
        array.each do |attrib, result|
          if result == "Winner"
            return array["name"].split[0]
          end
        end
      end
    end 
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num,contestants|
      contestants.each do |array|
        array.each do |attrib, result|
          if result == occupation
            return array["name"]
          end
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  
  data.each do |season_num,contestants|
      contestants.each do |array|
        array.each do |attrib, result|
          if result == hometown
            count += 1
          end
        end
      end
  end
  count 
end

def get_occupation(data, hometown)
  data.each do |season_num,contestants|
      contestants.each do |array|
        array.each do |attrib, result|
          if result == hometown
            return array["occupation"]
          # binding.pry
          end
        end
      end
  end
end

def get_average_age_for_season(data, season)
  contestant_ages = []
  data.each do |season_num,contestants|
      if season_num == season 
        contestants.each do |array|
            contestant_ages << array["age"].to_i
        end
      end
  end
  contest_ages_sum = contestant_ages.sum 
  average = contest_ages_sum / contestant_ages.length.to_f
  average.round 
end

 