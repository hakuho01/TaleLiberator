require 'dxopal'
include DXOpal

# ファイル読み込み
require_remote 'battle.rb'
require_remote 'rest.rb'
require_remote 'constants.rb'


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


Image.register(:bg, 'images/bg/map.png')
Image.register(:bg_battle, 'images/bg/battle.png')
Image.register(:bg_message, 'images/bg/message.png')
Image.register(:bg_rest, 'images/bg/rest.png')
Image.register(:map, 'images/map.png')
Image.register(:player_hexa, 'images/player_hexa.png')
Image.register(:bar, 'images/bar.png')
Image.register(:clock, 'images/clock.png')
Image.register(:clock_hands, 'images/clock_hands.png')
Image.register(:top_bar, 'images/top_bar.png')
Image.register(:icon_frame, 'images/icon_frame.png')
Image.register(:i_shirokishi, 'images/icon/shirokishi.png')
Image.register(:enemy1, 'images/enemy/enemy1.png')
Image.register(:turn_you, 'images/turn_you.png')
Image.register(:turn_enemy, 'images/turn_enemy.png')
Image.register(:turn_next_you, 'images/turn_next_you.png')
Image.register(:turn_next_enemy, 'images/turn_next_enemy.png')
Image.register(:icon1, 'images/icon_battle.png')
Image.register(:icon2, 'images/icon_event.png')
Image.register(:icon3, 'images/icon_treasure.png')
Image.register(:icon4, 'images/icon_rest.png')
Image.register(:icon5, 'images/icon_story.png')
Image.register(:icon6, 'images/icon_story.png')
Image.register(:icon7, 'images/icon_story.png')
Image.register(:icon8, 'images/icon_story.png')

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
    ''
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
  $mapevents = $MAPEVENT.shuffle
  $selects = []
  $endclock = 0
  $player_stats = {
    max_hp: 100,
    hp: 100,
    atk: 180,
    base_atk: 20,
    def: 110,
    base_def: 20,
    sp: 35
  }

  Window.loop do
    case $scene
    when :battle
      $battle.execute_battle
    when :event
    when :item
    when :rest
      $rest.execute_rest
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
            m == ''
          elsif $map_now > 9
            m = $map_now - 1
          elsif $map_now < 9
            m = $map_now
          end
          case $mapevents[m]
          when 0 # start
          when 1 # battle
            $scene = :battle
            $battle = Battle.new(0)
          when 2 # event
            $scene = :event
          when 3 # item
            $scene = :item
          when 4 # rest
            $scene = :rest
            $rest = Rest.new
          when 5 # 赤ずきん
          when 6 # ジャック
          when 7 # 猫
          when 8 # シンデレラ
          end
          $map_confirm = false
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

      $mapevents.each_with_index do |m, i|
        n = i
        n += 1 if i >= 9
        Window.draw($MAP[n][:coo][:x] - 16, $MAP[n][:coo][:y] - 16, Image["icon#{m}"])
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

      Window.draw(480, 100, Image[:enemy1])
      Window.draw_box_fill(600, 440, 800, 460, [0, 0, 0])
      Window.draw_box_fill(602, 442, 602 + (196 * $battle.enemy_hp / $battle.enemy_max_hp).floor, 458, [0, 255, 0])
      Window.draw_font(480, 442, "HP:#{$battle.enemy_hp}/#{$battle.enemy_max_hp}", $font14)
    when :rest
      Window.draw(0, 0, Image[:bg_rest])
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
    Window.draw(16, 556, Image[:i_shirokishi])
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
  end
end
