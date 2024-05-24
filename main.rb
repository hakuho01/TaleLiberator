require 'dxopal'
include DXOpal

# ファイル読み込み
require_remote 'constants.rb'
require_remote 'item.rb'
require_remote 'story.rb'

$MAP = [
  { id: 'a', d: 1, z: 3, x: 4, coo: { x: 562, y: 164 } },
  { id: 'b', a: 0, d: 2, z: 4, x: 5, coo: { x: 640, y: 164 } },
  { id: 'c', a: 1, z: 5, x: 6, coo: { x: 718, y: 164 } },
  { id: 'd', e: 0, d: 4, x: 8, z: 7, coo: { x: 523, y: 231 } },
  { id: 'e', w: 0, e: 1, a: 3, d: 5, z: 8, x: 9, coo: { x: 601, y: 231 } },
  { id: 'f', w: 1, e: 2, a: 4, d: 6, z: 9, x: 10, coo: { x: 679, y: 231 } },
  { id: 'g', w: 2, a: 5, z: 10, x: 11, coo: { x: 757, y: 231 } },
  { id: 'h', e: 3, d: 8, x: 12, coo: { x: 484, y: 298 } },
  { id: 'i', w: 3, e: 4, a: 7, d: 9, z: 12, x: 13, coo: { x: 562, y: 298 } },
  { id: 'j', w: 4, e: 5, a: 8, d: 10, z: 13, x: 14, coo: { x: 640, y: 298 } },
  { id: 'k', w: 5, e: 6, a: 9, d: 11, z: 14, x: 15, coo: { x: 718, y: 298 } },
  { id: 'l', w: 6, a: 10, z: 15, coo: { x: 796, y: 298 } },
  { id: 'm', w: 7, e: 8, d: 13, x: 16, coo: { x: 523, y: 365 } },
  { id: 'n', w: 8, e: 9, a: 12, d: 14, z: 16, x: 17, coo: { x: 601, y: 365 } },
  { id: 'o', w: 9, e: 10, a: 13, d: 15, z: 17, x: 18, coo: { x: 679, y: 365 } },
  { id: 'p', w: 10, e: 11, a: 14, z: 18, coo: { x: 757, y: 365 } },
  { id: 'q', w: 12, e: 13, d: 17, coo: { x: 562, y: 432 } },
  { id: 'r', w: 13, e: 14, a: 16, d: 18, coo: { x: 640, y: 432 } },
  { id: 's', w: 14, e: 15, a: 17, coo: { x: 718, y: 432 } }
]

$ACTION_NAME = ['', '攻撃', '防御', '攻撃バフ', '防御バフ']
$ENEMY_ACTION_NAME = ['', '攻撃', '防御', '攻撃バフ', '防御バフ']

Image.register(:bg, 'images/bg/map.png')
Image.register(:bg_battle, 'images/bg/battle.png')
Image.register(:bg_message, 'images/bg/message.png')
Image.register(:bg_rest, 'images/bg/rest.png')
Image.register(:bg_story5, 'images/bg/story5.png')
Image.register(:bg_story6, 'images/bg/story6.png')
Image.register(:bg_story7, 'images/bg/story7.png')
Image.register(:bg_story8, 'images/bg/story8.png')

Image.register(:map, 'images/map.png')
Image.register(:player_hexa, 'images/player_hexa.png')
Image.register(:icon1, 'images/icon_battle.png')
Image.register(:icon2, 'images/icon_event.png')
Image.register(:icon3, 'images/icon_treasure.png')
Image.register(:icon4, 'images/icon_rest.png')
Image.register(:icon5, 'images/icon_story.png')
Image.register(:icon6, 'images/icon_story.png')
Image.register(:icon7, 'images/icon_story.png')
Image.register(:icon8, 'images/icon_story.png')

Image.register(:bar, 'images/bar.png')
Image.register(:clock, 'images/clock.png')
Image.register(:clock_hands, 'images/clock_hands.png')
Image.register(:top_bar, 'images/top_bar.png')
# 顔フレーム
Image.register(:icon_frame, 'images/icon_frame.png')
Image.register(:i_shirokishi, 'images/icon/shirokishi.png')
Image.register(:i_cat, 'images/icon/cat.png')
# 敵
Image.register(:enemy1, 'images/enemy/enemy1.png')
Image.register(:enemy2, 'images/enemy/enemy2.png')
Image.register(:enemy3, 'images/enemy/enemy3.png')
Image.register(:enemy4, 'images/enemy/enemy4.png')
Image.register(:enemy5, 'images/enemy/enemy5.png')
Image.register(:enemy6, 'images/enemy/enemy6.png')
Image.register(:enemy7, 'images/enemy/enemy7.png')
#Image.register(:enemy8, 'images/enemy/enemy8.png')
#Image.register(:enemy9, 'images/enemy/enemy9.png')
Image.register(:enemy10, 'images/enemy/enemy10.png')
Image.register(:enemy11, 'images/enemy/enemy11.png')
Image.register(:enemy12, 'images/enemy/enemy12.png')
#Image.register(:enemy13, 'images/enemy/enemy13.png')
Image.register(:enemy14, 'images/enemy/enemy14.png')
Image.register(:enemy15, 'images/enemy/enemy15.png')
Image.register(:enemy16, 'images/enemy/enemy16.png')

Image.register(:turn_you, 'images/turn_you.png')
Image.register(:turn_enemy, 'images/turn_enemy.png')
Image.register(:turn_next_you, 'images/turn_next_you.png')
Image.register(:turn_next_enemy, 'images/turn_next_enemy.png')

$scene = :map

$player = { x: 0, y: 0 }
$map_now = 9
$player[:x] = $MAP[$map_now][:coo][:x]
$player[:y] = $MAP[$map_now][:coo][:y]

def move_player(direction)
  return unless $MAP[$map_now][direction]

  $map_now = $MAP[$map_now][direction]
  $player[:x] = $MAP[$map_now][:coo][:x]
  $player[:y] = $MAP[$map_now][:coo][:y]
  $map_confirm = true
  $endclock += 1
end

def check_event(map)
  if map == 9
    '何もない'
  else
    map -= 1 if map > 9
    $MAPEVENT_DESC[$mapevents[map]][:name]
  end
end

Window.width = 1280
Window.height = 720

$font14 = Font.new(16, 'ヒラギノ角ゴ')
$font20 = Font.new(20, 'ヒラギノ角ゴ')
$font24m = Font.new(24, 'A-OTF UD黎ミン Pr6N L')
$message = ''

Window.load_resources do
  # ここの処理はinit関数にあとで切り出す
  $fade_flg = false
  $mapevents = $MAPEVENT.shuffle
  $selects = []
  $endclock = 0
  $speaker = 'shirokishi'
  $events = (1..12).to_a.shuffle
  $event_no = 0
  $battle_ex_message = ''
  $player_stats = {
    max_hp: 100,
    hp: 100,
    atk: 180,
    base_atk: 20,
    def: 110,
    base_def: 20,
    sp: 35,
    exp: 0,
    actions: [1,2,3]
  }

  Window.loop do
    case $scene
    when :battle
      $battle.execute_battle
    when :event
      $event.execute_event
    when :item
      $item.execute_item
    when :rest
      $rest.execute_rest
    when :story
      $story.execute_story
    when :map
      if $endclock == 24
        # 終焉の時計が24になったときの処理
      end
      $top_bar_message = '進むタイルを選べ'
      $bar_message = '移動'
      $message = 'どこに進もうか'
      if $map_confirm
        $message = check_event($map_now)
        if Input.key_push?(K_SPACE)
          if $map_now == 9
            m = 0
          elsif $map_now > 9
            m = $map_now - 1
          elsif $map_now < 9
            m = $map_now
          end
          unless m.zero?
            case $mapevents[m]
            when 0 # start
            when 1 # battle
              $battle = Battle.new(($endclock / 6).floor)
              $scene = :battle
            when 2 # event
              $scene = :event
              $event_no += 1
              $event = Event.new
            when 3 # item
              $scene = :item
              $item = Item.new
            when 4 # rest
              $scene = :rest
              $rest = Rest.new
            when 5..8
              $scene = :story
              $story_id = $mapevents[m]
              $story = Story.new($mapevents[m])
            end
          end
          $map_confirm = false
          fade_in unless m.zero?
        end
      else
        move_player('w') if Input.key_push?(K_W)
        move_player('e') if Input.key_push?(K_E)
        move_player('d') if Input.key_push?(K_D)
        move_player('x') if Input.key_push?(K_X)
        move_player('z') if Input.key_push?(K_Z)
        move_player('a') if Input.key_push?(K_A)
      end
    end

    # 描画
    case $scene
    when :map
      Window.draw(0, 0, Image[:bg])
      Window.draw(Window.width / 2 - 225, 72, Image[:map])
      $mapevents.each_with_index do |event_id, i|
        next if event_id.zero?

        n = i
        n += 1 if i >= 9
        Window.draw($MAP[n][:coo][:x] - 16, $MAP[n][:coo][:y] - 16, Image["icon#{event_id}"])
      end
      Window.draw($player[:x] - 32, $player[:y] - 36, Image[:player_hexa])

    when :battle
      Window.draw(0, 0, Image[:bg_battle])

      if $turn == :player_turn
        Window.draw(1040, 100, Image[:turn_you])
      else
        Window.draw(1040, 100, Image[:turn_enemy])
      end
      if $next_turn == :player_select
        Window.draw(1050, 140, Image[:turn_next_you])
      else
        Window.draw(1050, 140, Image[:turn_next_enemy])
      end

      Window.draw(480, 100, Image["enemy#{$battle.enemy_id}"])
      Window.draw_box_fill(600, 440, 800, 460, [0, 0, 0])
      Window.draw_box_fill(602, 442, 602 + (196 * $battle.enemy_hp / $battle.enemy_max_hp).floor, 458, [0, 255, 0])
      Window.draw_font(480, 442, "HP:#{$battle.enemy_hp}/#{$battle.enemy_max_hp}", $font14)
      Window.draw_font(480, 462, "Next:#{$ENEMY_ACTION_NAME[$enemy_action]}", $font14)
    when :rest
      Window.draw(0, 0, Image[:bg_rest])
    when :event
      Window.draw(0, 0, Image["event#{$event_no}"])
    when :story
      Window.draw(0, 0, Image["bg_story#{$story_id}"])
    end

    # Bar
    Window.draw(340, 20, Image[:top_bar])
    Window.draw_font(640 - ($font20.get_width($top_bar_message) / 2), 34, $top_bar_message, $font20)
    Window.draw(980, 20, Image[:bar])
    Window.draw_font(1130 - ($font24m.get_width($bar_message) / 2), 32, $bar_message, $font24m)

    Window.draw(10, 10, Image[:clock])
    Window.draw_rot(-20, -20, Image[:clock_hands], $endclock * 15, 100, 100)

    # Text
    Window.draw(0, 540, Image[:bg_message])
    Window.draw(10, 550, Image[:icon_frame])
    Window.draw(16, 556, Image["i_#{$speaker}"])
    Window.draw_font(180, 550, $message, $font20)

    unless $selects.empty?
      Window.draw_box_fill(Window.width - 260, 550, Window.width - 262, 710, [255,255,255])
      $selects.each_with_index do |select, idx|
        Window.draw_font(Window.width - 240, 550 + idx * 36, "#{idx + 1}. #{select}", $font20)
      end
    end

    Window.draw_box_fill(300, 688, 500, 708, [0, 0, 0])
    Window.draw_box_fill(302, 690, 302 + (196 * $player_stats[:hp] / $player_stats[:max_hp]).floor, 706, [0, 255, 0])
    Window.draw_font(180, 690, "HP:#{$player_stats[:hp]}/#{$player_stats[:max_hp]}", $font14)

    if $fade_flg
      opacity = (255 / 45 * $fade_frames).floor
      Window.draw_box_fill(0, 0, Window.width, Window.height, [opacity, 0, 0, 0])
      $fade_frames -= 1
      $fade_flg = false if $fade_frames == 0
    end
  end
end

def fade_in
  $fade_flg = true
  $fade_frames = 45
end

# Restクラス
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
      $selects = ['休憩', '昇華', '鍛錬']
      if Input.key_push?(K_1)
        $selects = []
        $player_stats[:hp] = $player_stats[:hp] + ($player_stats[:max_hp] * 0.3).floor
        $player_stats[:hp] = $player_stats[:max_hp] if $player_stats[:hp] > $player_stats[:max_hp]
        @rest_step = 1
      elsif Input.key_push?(K_2)
        $selects = []
        @rest_step = 2
      elsif Input.key_push?(K_3)
        $selects = []
        @rest_step = 3
      end
    when 1
      $message = '体を休めて体力を回復した'
      $scene = :map if Input.key_push?(K_SPACE)
    when 2
      $message = '経験値をステータスに変換する'
      $scene = :map if Input.key_push?(K_SPACE)
    when 3
      $message = "#{}を身につけた"
      $scene = :map if Input.key_push?(K_SPACE)
    end
  end
end

# Eventクラス
class Event
  def initialize
    @steps = 0
  end

  def execute_event
    case $event_no
    when 1
      case @steps
      when 0
        $message = 'event1'
        if Input.key_push?(K_SPACE)
          @steps += 1
        end
      when 1
        if Input.key_push?(K_SPACE)
          @steps += 1
          $scene = :map
        end
      end
    when 2
      case @steps
      when 0
        $message = 'event2'
        if Input.key_push?(K_SPACE)
          @steps += 1
        end
      when 1
        if Input.key_push?(K_SPACE)
          @steps += 1
          $scene = :map
        end
      end
    when 3
      case @steps
      when 0
        $message = 'event3'
        if Input.key_push?(K_SPACE)
          @steps += 1
        end
      when 1
        if Input.key_push?(K_SPACE)
          @steps += 1
          $scene = :map
        end
      end
    end
  end
end

# Battleクラス
class Battle
  attr_accessor :enemy_hp, :enemy_max_hp, :enemy_id

  def initialize(rank)
    $bar_message = '戦闘'

    @enemy_stats = $ENEMIES[rank].sample
    @enemy_id = @enemy_stats[:id]
    @player_sp = $player_stats[:sp]
    @enemy_sp = @enemy_stats[:sp]
    @player_max_hp = $player_stats[:hp]
    @enemy_hp = @enemy_stats[:hp]
    @enemy_max_hp = @enemy_stats[:hp]
    @enemy_action_table = @enemy_stats[:actions]
    $enemy_action = @enemy_action_table.sample
    $next_turn = @enemy_sp >= @player_sp ? :player_select : :enemy_select

    $top_bar_message = "#{@enemy_stats[:name]}が現れた"
    @battle_phase = check_speed
  end

  def check_speed
    # プレイヤーが先に動く場合
    if @enemy_sp >= @player_sp
      @enemy_sp -= @player_sp
      @player_sp = $player_stats[:sp]
      $next_turn = @enemy_sp >= @player_sp ? :player_select : :enemy_select
      @player_actions = $player_stats[:actions].dup
      @selected_player_actions = []
      3.times do
        act = @player_actions.sample
        @selected_player_actions.push(act)
        @player_actions.delete(act)
      end
      $selects = [
        $ACTION_NAME[@selected_player_actions[0]],
        $ACTION_NAME[@selected_player_actions[1]],
        $ACTION_NAME[@selected_player_actions[2]]
      ]
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

      if Input.key_push?(K_1)
        player_action(@selected_player_actions[0])
        $selects = []
        @battle_phase = :player_action
      elsif Input.key_push?(K_2)
        player_action(@selected_player_actions[1])
        $selects = []
        @battle_phase = :player_action
      elsif Input.key_push?(K_3)
        player_action(@selected_player_actions[2])
        $selects = []
        @battle_phase = :player_action
      end

    when :player_action
      $message = "#{@give_dmg}ダメージを与えた"

      if Input.key_push?(K_SPACE)
        @battle_phase = check_speed
        @battle_phase = :win if @enemy_hp.zero?
      end

    when :enemy_select
      $message = '敵の攻撃！'

      if Input.key_push?(K_SPACE)
        enemy_action($enemy_action)
        @battle_phase = :enemy_action
      end

    when :enemy_action
      $message = "#{$ENEMY_ACTION_NAME[$enemy_action]}で#{@take_dmg}ダメージを受けた"
      if Input.key_push?(K_SPACE)
        $enemy_action = @enemy_action_table.sample
        @battle_phase = check_speed
        @battle_phase = :lose if $player_stats[:hp].zero?
      end
    when :win
      $message = "勝利した。#{$battle_ex_message}"
      if Input.key_push?(K_SPACE)
        $scene = :map
        $battle_ex_message = ''
      end
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

  def player_action(id)
    case id
    when 1
      @give_dmg = (($player_stats[:base_atk] + 20) * $player_stats[:atk] / @enemy_stats[:def] - @enemy_stats[:base_def]).floor
      @enemy_hp = @enemy_hp - @give_dmg
      @enemy_hp = 0 if @enemy_hp < 0
    when 2
      @give_dmg = (($player_stats[:base_atk] + 20) * $player_stats[:atk] / @enemy_stats[:def] - @enemy_stats[:base_def]).floor
      @enemy_hp = @enemy_hp - @give_dmg
      @enemy_hp = 0 if @enemy_hp < 0
    when 3
      @give_dmg = (($player_stats[:base_atk] + 20) * $player_stats[:atk] / @enemy_stats[:def] - @enemy_stats[:base_def]).floor
      @enemy_hp = @enemy_hp - @give_dmg
      @enemy_hp = 0 if @enemy_hp < 0
    end
  end

  def enemy_action(id)
    case id
    when 1
      @take_dmg = ((@enemy_stats[:base_atk] + 20) * @enemy_stats[:atk] / $player_stats[:def] - $player_stats[:base_def]).floor
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp] < 0
    when 2
      @take_dmg = ((@enemy_stats[:base_atk] + 20) * @enemy_stats[:atk] / $player_stats[:def] - $player_stats[:base_def]).floor
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp] < 0
    when 3
      @take_dmg = ((@enemy_stats[:base_atk] + 20) * @enemy_stats[:atk] / $player_stats[:def] - $player_stats[:base_def]).floor
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp] < 0
    end
  end
end
