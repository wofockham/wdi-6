print "Where do you live? "
user_suburb = gets.chomp.downcase

def judge_suburb(suburb)
  case suburb
    when 'mosman' then puts "OOh lah dee dah, aren't we grand"
    when 'glebe' then puts "Is something burning?"
    when 'manly' then puts "I like your ferry"
    when 'chatswood' then puts "Good ramen"
    else puts "I'm sure that's very nice"
  end

  if ['bondi', 'coogee', 'clovelly', 'centenial park'].include? suburb
    puts "Parking is hard"
  elsif suburb == 'chatswood'
    puts "Good ramen"
  else
    puts "I'm sure that's very nice"
  end
end

judge_suburb(user_suburb)
