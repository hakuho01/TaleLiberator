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
      $scene = :map if Input.key_push?(K_SPACE)
    when 6
      $scene = :map if Input.key_push?(K_SPACE)
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
          $battle_ex_message = '長靴を履いた猫が仲間になった'
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
      $scene = :map if Input.key_push?(K_SPACE)
    end
  end
end