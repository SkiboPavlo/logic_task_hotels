a = Array.new(100) {|i| i+rand(40)}

n = a.count
m = 500
combs = []
res = []
result = nil

(2..n).each do |epoch|
  a.each_with_index do |l, i|
    combo = Array.new(epoch)
    (0...epoch).each do |ind|
      combo[ind] = a[rand(n)] if a[rand(n)]
    end
    combs << combo
  end

  combs.each do |pair|
    res << pair.inject(0) { |sum, x| sum + x }
  end

  result = res.select { |num| m - num <=3 && m-num >0 }
  break if result.count > 0
end
p combs
p "Solution: #{result.max}"
