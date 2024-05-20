require 'dxopal'
include DXOpal

# ファイル読み込み
require_remote 'battle.rb'
require_remote 'constants.rb'

Image.register(:bg, 'images/bg.png')
Image.register(:bg_battle, 'images/bg/battle.png')
Image.register(:bg_message, 'images/bg/message.png')
Image.register(:map, 'images/map.png')
Image.register(:bar, 'images/bar.png')
Image.register(:top_bar, 'images/top_bar.png')
Image.register(:icon_frame, 'images/icon_frame.png')
Image.register(:i_shirokishi, 'images/icon/shirokishi.png')
Image.register(:enemy1, 'images/enemy/enemy1.png')
Image.register(:turn_you, 'images/turn_you.png')
Image.register(:turn_enemy, 'images/turn_enemy.png')
Image.register(:turn_next_you, 'images/turn_next_you.png')
Image.register(:turn_next_enemy, 'images/turn_next_enemy.png')

$scene = :battle

$player = { x: 98, y: 63 }
$map_now = :a

def move_player(direction)
  return unless $MAP[$map_now].key(direction)

  next_position = $MAP[$map_now].key(direction)
  $map_now = next_position
  $player[:x] = $MAP[$map_now][:coo][:x]
  $player[:y] = $MAP[$map_now][:coo][:y]
  $map_confirm = true
end

Window.width = 1280
Window.height = 720

$font14 = Font.new(16, 'ヒラギノ角ゴ')
$font20 = Font.new(20, 'ヒラギノ角ゴ')
$font24m = Font.new(24, 'A-OTF UD黎ミン Pr6N L')
$message = ''

Window.load_resources do
  # ここの処理はinit関数にあとで切り出す
  battle = Battle.new(1)

  Window.loop do

    case $scene
    when :battle
      battle.execute_battle
    when :map
      $top_bar_message = '進むタイルを選べ'
      $bar_message = '移動'
      $message = 'どこに進もうか'

    end

    # 描画
    case $scene
    when :map
      Window.draw(0, 0, Image[:bg])
      Window.draw(0, 0, Image[:map])

      Window.draw_circle_fill($player[:x], $player[:y], 10, [128, 0, 0])
      if $map_confirm
        $message = '何かが起こりそうだ'
        if Input.key_push?(K_SPACE)
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
      Window.draw_box_fill(602, 442, 602 + (196 * battle.enemy_hp / battle.enemy_max_hp).floor, 458, [0, 255, 0])
      Window.draw_font(480, 442, "HP:#{battle.enemy_hp}/#{battle.enemy_max_hp}", $font14)
    end
    # Bar
    Window.draw(340, 20, Image[:top_bar])
    Window.draw_font(640 - ($font20.get_width($top_bar_message) / 2), 34, $top_bar_message, $font20)
    Window.draw(980, 20, Image[:bar])
    Window.draw_font(1130 - ($font24m.get_width($bar_message) / 2), 32, $bar_message, $font24m)

    # Text
    Window.draw(0, 540, Image[:bg_message])
    Window.draw(10, 550, Image[:icon_frame])
    Window.draw(16, 556, Image[:i_shirokishi])
    Window.draw_font(180, 550, $message, $font20)
    case $scene
    when :battle
      Window.draw_box_fill(Window.width - 210, 550, Window.width - 10, 570, [0, 0, 0])
      Window.draw_box_fill(Window.width - 208, 552, Window.width - 208 + (196 * battle.player_hp / battle.player_max_hp).floor, 568, [0, 255, 0])
      Window.draw_font(Window.width - 320, 550, "HP:#{battle.player_hp}/#{battle.player_max_hp}", $font14)
    end
  end
end
