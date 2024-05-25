class Story
  def initialize(id)
    @id = id
    case @id
    when 5
    when 6
    when 7
    when 8
    end
    $bar_message = "物語の世界"
    @steps = 0
  end

  def execute_story
    case $story_id
    when 5
      $top_bar_message = '赤ずきんの世界'
      case @steps
      when 0
        $message = '赤ずきん「きゃぁっ！」'
        $speaker = 'redcap'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 1
        $message = '「お嬢さん、大丈夫かい？」'
        $speaker = 'shirokishi'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 2
        $message = '赤ずきん「騎士さん……悪い狼が暴れ出して手に負えないの！」'
        $speaker = 'redcap'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 3
        $message = '赤ずきん「助けてくれないかしら？」'
        if Input.key_push?(K_SPACE)
          $speaker = 'shirokishi'
          $battle_ex_message = '赤ずきんが仲間になった。紅天撃を身につけた'
          $player_stats[:actions].push()
          $scene = :battle
          $battle = Battle.new(5)
          if $map_now > 9
            m = $map_now - 1
          elsif $map_now < 9
            m = $map_now
          end
          $mapevents[m] = 0
        end
      end
    when 6
      $top_bar_message = 'ジャックと豆の木の世界'
      case @steps
      when 0
        $message = 'ジャック「や、やばいぜ〜！」'
        $speaker = 'jack'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 1
        $message = '「どうした、そこの青年？」'
        $speaker = 'shirokishi'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 2
        $message = 'ジャック「大きな豆の木を登っていたら、見ての通り恐ろしい巨人に追いかけられてるんだ！」'
        $speaker = 'cinder'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 3
        $message = 'シンデレラ「助けてくれ〜！」'
        if Input.key_push?(K_SPACE)
          $speaker = 'shirokishi'
          $battle_ex_message = 'ジャックが仲間になった。豆料理を身につけた'
          $player_stats[:actions].push()
          $scene = :battle
          $battle = Battle.new(6)
          if $map_now > 9
            m = $map_now - 1
          elsif $map_now < 9
            m = $map_now
          end
          $mapevents[m] = 0
        end
      end
    when 7
      $top_bar_message = '長靴を履いた猫の世界'
      case @steps
      when 0
        $message = '長靴を履いた猫「そこの方！手を貸して欲しい！」'
        $speaker = 'cat'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 1
        $message = '「これは一体……？」'
        $speaker = 'shirokishi'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 2
        $message = '長靴を履いた猫「王が闇の力に操られてしまった！私一人では手に負えない」'
        $speaker = 'cat'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 3
        $message = '長靴を履いた猫「どうか助太刀をお願いできないか？」'
        if Input.key_push?(K_SPACE)
          $speaker = 'shirokishi'
          $battle_ex_message = '長靴を履いた猫が仲間になった。ねこパンチを身につけた'
          $player_stats[:actions].push()
          $scene = :battle
          $battle = Battle.new(7)
          if $map_now > 9
            m = $map_now - 1
          elsif $map_now < 9
            m = $map_now
          end
          $mapevents[m] = 0
        end
      end
    when 8
      $top_bar_message = 'シンデレラの世界'
      case @steps
      when 0
        $message = 'シンデレラ「お母様……いったい……」'
        $speaker = 'cinder'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 1
        $message = '「何が起こっている？」'
        $speaker = 'shirokishi'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 2
        $message = 'シンデレラ「継母がいきなりおかしくなって、舞踏会をめちゃくちゃに……」'
        $speaker = 'cinder'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 3
        $message = 'シンデレラ「お願い、一緒に戦って！」'
        if Input.key_push?(K_SPACE)
          $speaker = 'shirokishi'
          $battle_ex_message = 'シンデレラが仲間になった。灰姫の祈祷を身につけた'
          $player_stats[:actions].push()
          $scene = :battle
          $battle = Battle.new(8)
          if $map_now > 9
            m = $map_now - 1
          elsif $map_now < 9
            m = $map_now
          end
          $mapevents[m] = 0
        end
      end
    end
  end
end