require "csv"
puts "1(新規でメモを作成)2(既存のメモ編集する)"
#memo_type = gets.to_s

memo_type = gets.to_s
memo_type = memo_type.to_i


if memo_type  == 1 
  puts "拡張子を除いたファイルを入力して下さい"  #条件がtrueの場合実行される
  memo = gets.chomp
  File.open("#{memo}.csv", "w")

  puts "”メモしたい内容を記入してください”"  #条件がtrueの場合実行される
  puts "”完了したらCtrl ＋　Dをおします。”"
  
  message = gets.chomp
  File.open("#{memo}.csv","a"){|f|
  f.write("#{message}")
  }
  if memo_text == "コントロール＋D"
    puts "解除"  #条件がtrueの場合実行される
  else 
     puts "for文で永遠に戻しつつcsvへ"  #条件がfalseの場合実行される
  end

elsif memo_type  == 2
    puts "拡張子を除いたファイルを入力して下さい2"  #条件がtrueの場合実行される
    memo = gets.chomp
    File.open("#{memo}.csv")
    
    
    puts "”メモしたい内容を記入してください”"  #条件がtrueの場合実行される
    puts "”完了したらCtrl ＋　Dをおします。”"
  memo_text = gets

  if memo_text == "コントロール＋D"
    puts "解除”"  #条件がtrueの場合実行される
  else 
      puts "for文で永遠に戻しつつcsvへ"  #条件がfalseの場合実行される
      memo_message = gets
      File.put "#{memo_message}"
      
  end

else
    puts "１か２を記入してください"  #条件がfalseの場合実行される
end




