class Battle
  attr_accessor :player_hp, :enemy_hp, :player_max_hp, :enemy_max_hp

  def initialize(rank)
    $bar_message = '戦闘'

    @battle_phase = :player_select
    @player_stats = {
      hp: 100,
      atk: 180,
      base_atk: 20,
      def: 110,
      base_def: 20,
      sp: 35
    }
    @enemy_stats = $ENEMIES[rank].sample
    @player_sp = @player_stats[:sp]
    @enemy_sp = @enemy_stats[:sp]
    @player_hp = @player_stats[:hp]
    @player_max_hp = @player_stats[:hp]
    @enemy_hp = @enemy_stats[:hp]
    @enemy_max_hp = @enemy_stats[:hp]
    @enemy_action_table = @enemy_stats[:actions]
    $next_turn = @enemy_sp >= @player_sp ? :player_select : :enemy_select

    $top_bar_message = "#{@enemy_stats[:name]}が現れた"
  end

  def check_speed
    # プレイヤーが先に動く場合
    if @enemy_sp >= @player_sp
      @enemy_sp -= @player_sp
      @player_sp = @player_stats[:sp]
      $next_turn = @enemy_sp >= @player_sp ? :player_select : :enemy_select
      :player_select
    else
      @player_sp -= @enemy_sp
      @enemy_sp = @enemy_stats[:sp]
      $next_turn = @enemy_sp >= @player_sp ? :player_select : :enemy_select
      :enemy_select
    end
  end 
  
  def execute_battle
    case @battle_phase
    when :player_select
      $message = 'どうする？'
      @enemy_action = @enemy_action_table.sample
      
      if Input.key_push?(K_SPACE)
        $input = Input.key_push?(K_SPACE)
        @give_dmg = ((@player_stats[:base_atk] + 20) * @player_stats[:atk] / @enemy_stats[:def] - @enemy_stats[:base_def]).floor
        @enemy_hp = @enemy_hp - @give_dmg
        @enemy_hp = 0 if @enemy_hp < 0
        @battle_phase = :player_action
      end
    
    when :player_action
      $message = "#{@give_dmg}ダメージを与えた"
       
      if Input.key_push?(K_SPACE)
        @battle_phase = check_speed
        @battle_phase = :win if @enemy_hp == 0
      end
    
    when :enemy_select
      $message = '敵の攻撃！'

      if Input.key_push?(K_SPACE)
        @take_dmg = ((@enemy_stats[:base_atk] + 20) * @enemy_stats[:atk] / @player_stats[:def] - @player_stats[:base_def]).floor
        @player_hp = @player_hp - @take_dmg
        @player_hp = 0 if @player_hp < 0
        @battle_phase = :enemy_action
      end

    when :enemy_action
      $message = "#{@enemy_action}で#{@take_dmg}ダメージを受けた"
      if Input.key_push?(K_SPACE)
        @battle_phase = check_speed
        @battle_phase = :lose if @player_hp == 0
      end
    when :win
      $message = '勝利した'
      $scene = :map if Input.key_push?(K_SPACE)
    when :lose
      $message = '敗北した'
      $scene = :gameover if Input.key_push?(K_SPACE)
    end

    if (@battle_phase == :player_select) || (@battle_phase == :player_action)
      $turn = :player_turn
    else
      $turn = :enemy_turn
    end
  end
end