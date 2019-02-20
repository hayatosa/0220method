def sports_car(color = "赤",price = 1_000_000, capacity = 2)

  return "乗車人数は2人までにしてください。入力値:#{capacity}" if capacity <=0  || capacity >= 3
  return "予算は5,000,000円までです。入力値:#{price}" if price >= 5_000_001
  return "赤色を選んだあなたは、価格#{price}円が10%offで#{price * 0.9}円になります。" if color == "赤"
  return "私は#{color}色の#{capacity}人乗りの車を#{price}円で買いました。200万以上買うともう一台サービスでもらえます。" if price >= 2_000_000
  "私は#{color}色の#{capacity}人乗りの車を#{price}円で買いました。"

end

puts sports_car("赤",10000,2)
puts sports_car("青",6000000,1)
puts sports_car()
puts "---------------------------------------------"

# 200万以上の買い物で「もう一台サービス」の文言をつけたい

def sports_car(color = "黒",price = 2_000_000, capacity = 5)

  return "私は#{color}色の#{capacity}人乗りの車を#{price}円で買いました。200万以上買うともう一台サービスでもらえます。" if price >= 2_000_000
  "私は#{color}色の#{capacity}人乗りの車を#{price}円で買いました。"

end

puts sports_car("青",1000,3)
puts sports_car()
puts "---------------------------------------------"

# 赤を選んだら価格を10%offにしたい

def sports_car(color = "黒",price = 1_000_000, capacity = 2)

  return "赤色を選んだあなたは、価格#{price}円が10%offで#{price * 0.9}円になります。" if color == "赤"
  "私は#{color}色の#{capacity}人乗りの車を#{price}円で買いました。"

end

puts sports_car("黒",2_000_000,3)
puts sports_car("赤",1_000_000,4)
