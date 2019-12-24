chances=5
levels=0
ele_arr=["APPLE","BANANA","WATERMELON","MANGO","KIWI","BLACKBERRY","RASBERRY","BLUEBERRY","PINEAPPLE","CHERRY","ORANGE" ]

 def  display_word(w)
    for i in 0..w.length do
      print "#{w[i]}"
    end
  end


def search_idx(l,word_selected)
  j=0
  point=[]
  while (j!=word_selected.length )
    if word_selected[j]==l
      point<<j
      j += 1
    else
      j += 1
    end 
  end   
  point
end


def check(word_selected,chances)
  word = ""
  is_included=""
  for i in 1..word_selected.length do
    word = word+"_"
  end 
  while(word != word_selected and chances !=0) do
    puts " chances #{chances}"
    display_word(word)
    puts "please Enter any Letter (uppercase)"
    l=gets.chomp.upcase
    puts l

    if is_included.include? l
      puts "Sorry..... already choosen"
    else
      is_included += l

      if word_selected.include? l
          temp = search_idx(l, word_selected)
          temp.each do |a|
            word[a] = l
          end 
      else
        chances -= 1 
    end 
  end
  if(chances==0)
    display_word(word)
    puts "\n u lost #{word_selected}"
    exit
    elsif(word == word_selected)
    display_word(word)
    puts "correct:)"
    chances = 5
   end
   end
  chances
end   
while (levels<5)
  levels +=1
  puts "Level Number ===>  #{levels}"

  word_selected=ele_arr[rand(ele_arr.length)]
  chances=check(word_selected,chances)

end  
