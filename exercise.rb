ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

#MORE EFFICIENT 
# total_hash = Hash.new(0)
# ballots.each do |b|
#   b.each do |num, cand|
#     total = 4 - num
#     total_hash[cand] += total
#   end
# end
#
# p total_hash

smudge_counter = 0
tigger_counter = 0
simba_counter = 0
lucky_counter = 0
bella_counter = 0
felix_counter = 0
boots_counter = 0

ballots.each do |b|
  b.each do |num, name|
    if name == "Smudge"
      smudge_counter += 4-num
    elsif name == "Tigger"
      tigger_counter += 4-num
    elsif name == "Simba"
      simba_counter += 4-num
    elsif name == "Bella"
      bella_counter += 4-num
    elsif name == "Lucky"
      lucky_counter += 4-num
    elsif name == "Felix"
      felix_counter += 4-num
    elsif name == "Boots"
      boots_counter += 4-num
    end
  end
end

totals = {"Smudge"=>smudge_counter, "Tigger"=>tigger_counter, "Simba"=>simba_counter, "Bella"=>bella_counter, "Lucky"=>lucky_counter, "Felix"=>felix_counter, "Boots"=>boots_counter}
p totals
