require "csv"
puts "1(新規でメモを作成)2(既存のメモ編集する)"
#memo_type = gets.to_s

memo_type = gets.to_i

if memo_type  == 1 
  puts "拡張子を除いたファイルを入力して下さい"  
  
  file = gets.chomp
  
  puts "”メモしたい内容を記入してください”" 
  puts "”完了したらCtrl ＋　Dをおします。”"
  
  memo_type = STDIN.read

    CSV.open("#{file}.csv","w") do |memo|

        memo << ["#{memo_type}"]
    end

elsif memo_type  == 2
  puts "拡張子を除いたファイルを入力して下さい"  
  file = gets.chomp
    
    puts "”編集したい内容を記入してください”"  
    puts "”完了したらCtrl ＋　Dをおします。”"
   
    memo_type = STDIN.read

    CSV.open("#{file}.csv","a") do |memo|

        memo << ["#{memo_type}"]
    end
    
else
    puts "１か２を記入してください"  #条件がfalseの場合実行される
end




