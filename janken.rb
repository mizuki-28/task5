# あいこ
def draw
  player = gets.to_i
  computer = rand(3)
  jankens = ["グー", "チョキ", "パー"]
  hoi = ["上", "下", "左", "右"]

  if (player == 0)||(player == 1)||(player == 2)
    puts "ショ！"
    puts "--------------------"
    puts "あなた：#{jankens[player]}を出しました"
    puts "相手：#{jankens[computer]}を出しました"
    puts "--------------------"
    if player == computer
      puts "あいこで..."
      puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
      return true
    elsif(player == 0 && computer == 1)||(player == 1 && computer == 2)||(player == 2 && computer == 0)
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)"
      player_h = gets.to_i
      computer_h = rand(4)
      puts "ホイ！"
      puts "--------------------"
      puts "あなた：#{hoi[player_h]}"
      puts "相手：#{hoi[computer_h]}"
      puts "--------------------"
      if player_h == computer_h
        puts "あなたの勝ちです"
      else
        first_game = true
      end
    else
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)"
      player_h = gets.to_i
      computer_h = rand(4)
      puts "ホイ！"
      puts "--------------------"
      puts "あなた：#{hoi[player_h]}"
      puts "相手：#{hoi[computer_h]}"
      puts "--------------------"
      if player_h == computer_h
        puts "あなたの負けです"
      else
        first_game = true
      end
    end
  elsif player == 3
    puts "じゃんけんを終了します"
  else
    puts "0 1 2 3のいずれかを入力してください"
  end
end
# あいこ終了

# 一戦目
def janken
  player = gets.to_i
  computer = rand(3)
  computer_h = rand(4)
  jankens = ["グー", "チョキ", "パー"]
  hoi = ["上", "下", "左", "右"]

  if (player == 0)||(player == 1)||(player == 2)
  puts "ホイ！"
  puts "--------------------"
  puts "あなた：#{jankens[player]}を出しました"
  puts "相手：#{jankens[computer]}を出しました"
  puts "--------------------"
    if player == computer
      puts "あいこで..."
      puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
      next_game = true
      while
      next_game = draw
      end
    elsif(player == 0 && computer == 1)||(player == 1 && computer == 2)||(player == 2 && computer == 0)
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)"
      player_h = gets.to_i
      computer_h = rand(4)
      puts "ホイ！"
      puts "--------------------"
      puts "あなた：#{hoi[player_h]}"
      puts "相手：#{hoi[computer_h]}"
      puts "--------------------"
      if player_h == computer_h
        puts "あなたの勝ちです"
      else
        first_game = true
        first_game = start_action
      end
    else
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)"
      player_h = gets.to_i
      computer_h = rand(4)
      puts "ホイ！"
      puts "--------------------"
      puts "あなた：#{hoi[player_h]}"
      puts "相手：#{hoi[computer_h]}"
      puts "--------------------"
      if player_h == computer_h
        puts "あなたの負けです"
      else
        first_game = true
        first_game = start_action
      end
    end
  elsif player == 3
    puts "じゃんけんを終了します"
  else
    puts "0 1 2 3のいずれかを入力してください"
  end
end
# 一戦目終了

# じゃんけん...
def start_action
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  first_game = true
  while
    first_game = janken
  end
end
# じゃんけん...終了

first_game = true
while
  first_game = start_action
end

