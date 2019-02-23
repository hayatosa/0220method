def disp_sum
  price = 1500
  num = 30
  "#{price}円の商品を#{num}個買ったので合計金額は#{price * num}です"
end

puts disp_sum

# rubyでreturnを使うのはメソッドの途中で処理を抜けたい時
def disp_sum(price,num)

  return "商品の購入数は1以上にしてください :入力値#{num}" if num <= 0

  "#{price}円の商品を#{num}個買ったので合計金額は#{price * num}です"
end

puts disp_sum(1000,1)
puts disp_sum(200,-5)

# デフォルト値付の引数
# 引数にデフォルト値を設定すると、「引数が存在する場合は引数を元に処理を行い、
# 引数がない場合はデフォルト値を使って処理を行う」といった処理が可能になります。

def disp_sum(price = 2000, num = 10)

  return "商品の購入数は1以上にしてください :入力値#{num}" if num <= 0

  "#{price}円の商品を#{num}個買ったので合計金額は#{price * num}です"
end

puts disp_sum()
