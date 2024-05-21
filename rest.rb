class Rest
  def initialize
    $bar_message = '休息'
    $top_bar_message = '戦いに備えよう'
    @rest_step = 0
  end

  def execute_rest
    case @rest_step
    when 0
      $message = 'どうする？'
      $selects = ['休憩', '武器の研磨', '防具の整備']
      if Input.key_push?(K_1)
        @rest_step = 1
      elsif Input.key_push?(K_2)
        @rest_step = 2
      elsif Input.key_push?(K_3)
        @rest_step = 3
      end
    when 1
      $message = '体を休めて体力を回復した'
      $scene = :map if Input.key_push?(K_SPACE)
    when 2
      $message = '武器を研いで攻撃力を上げた'
      $scene = :map if Input.key_push?(K_SPACE)
    when 3
      $message = '防具を磨いて防御力を上げた'
      $scene = :map if Input.key_push?(K_SPACE)
    end
  end
end
