users = ["satou", "tanaka", "yamada", "shimizu"]

users.each.with_index(1) {|name, i| puts "Hello!! No.#{i}#{name}さん"}

users = ["a","b","c","d","e","f"]
users.shuffle!

team1 = []
team2 = []

users.each.with_index do |user, i|
  if i.odd?
    team1 << user
  else
    team2 << user
  end
end

text = "チーム1\n"
team1.each.with_index(1) do |member, i|
# textに文字列連結
 text += "No.#{i}#{member}さん\n"
end

text += "\nチーム2\n"
team2.each.with_index(4) do |member, i|
# textに文字列連結
 text += "No.#{i}#{member}くん\n"
end

puts text
