require "csv"
puts "1(新規でメモを作成)2(既存のメモ編集する)"
#memo_type = gets.to_s

memo_type = gets.to_s
memo_type = memo_type.to_i

if memo_type  == 1 
  puts "拡張子を除いたファイルを入力して下さい"  
  memo = gets.chomp
  File.open("#{memo}.csv", "w")

  puts "”メモしたい内容を記入してください”" 
  puts "”完了したらCtrl ＋　Dをおします。”"
  
  message = gets.chomp
  File.open("#{memo}.csv","a"){|f|
  f.write("#{message}")
  }

elsif memo_type  == 2
    puts "編集したいファイルを入力して下さい"  
    memo = gets.chomp
    File.open("#{memo}.csv")
    
    puts "”編集したい内容を記入してください”"  
    puts "”完了したらCtrl ＋　Dをおします。”"
    message = gets.chomp
    File.open("#{memo}.csv","a"){|f|
    f.write("#{message}")
    }

else
    puts "１か２を記入してください"  #条件がfalseの場合実行される
end




