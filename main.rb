require 'dxopal'
include DXOpal

# ファイル読み込み
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

$ACTION_NAME = ['', '攻撃', '防御', '集中', '警戒', '紅天撃', '豆料理', 'ねこパンチ', '灰姫の祈祷', '攻撃＋', '防御＋', '集中＋', '警戒＋']
$ENEMY_ACTION_NAME = ['', '攻撃', '防御', '怒り', '警戒', '毒牙', 'ブレス', '呪い', '激昂', '攻撃＋', '防御＋', '警戒＋', '威圧', '呪詛', '連撃掌', '遠吠え', '闇刻波', '致死の儀', '死霊撃', '練怨術', '解呪', '攻撃', '警戒']
$ITEMS = [
  { name: '白銀の剣', stats_name: '攻撃力', stats: 'base_atk', value: 10 },
  { name: '赤銅の槍', stats_name: '攻撃力', stats: 'base_atk', value: 5 },
  { name: '青銅の斧', stats_name: '攻撃力', stats: 'base_atk', value: 7 },
  { name: '黒鉄の鎧', stats_name: '防御力', stats: 'base_def', value: 6 },
  { name: '黄金の兜', stats_name: '防御力', stats: 'base_def', value: 10 }
]

Image.register(:logo, 'images/logo.png')

Image.register(:bg, 'images/bg/map.png')
Image.register(:bg_title, 'images/bg/title.png')
Image.register(:bg_battle, 'images/bg/battle.png')
Image.register(:bg_message, 'images/bg/message.png')
Image.register(:bg_rest, 'images/bg/rest.png')
Image.register(:bg_item, 'images/bg/item.png')
Image.register(:bg_story5, 'images/bg/story5.png')
Image.register(:bg_story6, 'images/bg/story6.png')
Image.register(:bg_story7, 'images/bg/story7.png')
Image.register(:bg_story8, 'images/bg/story8.png')
Image.register(:bg_event1, 'images/bg/event1.png')
Image.register(:bg_event2, 'images/bg/event2.png')
Image.register(:bg_event3, 'images/bg/event3.png')
Image.register(:ending1, 'images/bg/ending1.png')
Image.register(:ending2, 'images/bg/ending2.png')
Image.register(:endscene, 'images/bg/endscene.png')

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
Image.register(:endtext, 'images/endtext.png')
# 顔フレーム
Image.register(:icon_frame, 'images/icon_frame.png')
Image.register(:i_shirokishi, 'images/icon/shirokishi.png')
Image.register(:i_cat, 'images/icon/cat.png')
Image.register(:i_cinder, 'images/icon/cinder.png')
Image.register(:i_jack, 'images/icon/jack.png')
Image.register(:i_redcap, 'images/icon/redcap.png')
Image.register(:i_cat2, 'images/icon/cat2.png')
Image.register(:i_donkey, 'images/icon/donkey.png')
Image.register(:i_rooster, 'images/icon/rooster.png')
Image.register(:i_dog, 'images/icon/dog.png')
Image.register(:i_dwarf, 'images/icon/dwarf.png')
Image.register(:i_terror, 'images/icon/terror.png')
# 敵
Image.register(:enemy1, 'images/enemy/enemy1.png')
Image.register(:enemy2, 'images/enemy/enemy2.png')
Image.register(:enemy3, 'images/enemy/enemy3.png')
Image.register(:enemy4, 'images/enemy/enemy4.png')
Image.register(:enemy5, 'images/enemy/enemy5.png')
Image.register(:enemy6, 'images/enemy/enemy6.png')
Image.register(:enemy7, 'images/enemy/enemy7.png')
Image.register(:enemy8, 'images/enemy/enemy8.png')
Image.register(:enemy9, 'images/enemy/enemy9.png')
Image.register(:enemy10, 'images/enemy/enemy10.png')
Image.register(:enemy11, 'images/enemy/enemy11.png')
Image.register(:enemy12, 'images/enemy/enemy12.png')
Image.register(:enemy13, 'images/enemy/enemy13.png')
Image.register(:enemy14, 'images/enemy/enemy14.png')
Image.register(:enemy15, 'images/enemy/enemy15.png')
Image.register(:enemy16, 'images/enemy/enemy16.png')
Image.register(:enemy17, 'images/enemy/enemy17.png')

Image.register(:turn_you, 'images/turn_you.png')
Image.register(:turn_enemy, 'images/turn_enemy.png')
Image.register(:turn_next_you, 'images/turn_next_you.png')
Image.register(:turn_next_enemy, 'images/turn_next_enemy.png')
Image.register(:atk_up, 'images/icon/atk_up.png')
Image.register(:atk_down, 'images/icon/atk_down.png')
Image.register(:def_up, 'images/icon/def_up.png')
Image.register(:def_down, 'images/icon/def_down.png')
Image.register(:poison, 'images/icon/poison.png')
Image.register(:fire, 'images/icon/fire.png')
Image.register(:curse, 'images/icon/curse.png')

Sound.register(:battle, 'music/battle.mp3')
Sound.register(:rest, 'music/rest.mp3')
Sound.register(:boss, 'music/boss.mp3')
Sound.register(:story, 'music/story.mp3')
Sound.register(:item, 'music/item.mp3')
Sound.register(:map, 'music/map.mp3')
Sound.register(:event, 'music/event.mp3')
Sound.register(:battleend, 'music/battleend.mp3')
Sound.register(:ending, 'music/ending.mp3')
Sound.register(:terror, 'music/terror.mp3')

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

$font16 = Font.new(16, 'hiragino-kaku-gothic-pron')
$font20 = Font.new(20, 'hiragino-kaku-gothic-pron')
$font24m = Font.new(24, 'a-otf-ud-reimin-pr6n')
$font32 = Font.new(32, 'Futura-PT')
$font64 = Font.new(64, 'Futura-PT')

def game_init
  $fade_flg = false
  $mapevents = $MAPEVENT.shuffle
  $scene = :start
  $selects = []
  $endclock = 0
  $speaker = 'shirokishi'
  $events = (1..12).to_a.shuffle
  $event_no = 0
  $get_items = []
  $message = ''
  $battle_ex_message = ''
  $message2 = ''
  $player_stats = {
    max_hp: 100,
    hp: 100,
    atk: 100,
    base_atk: 20,
    def: 100,
    base_def: 20,
    sp: 90,
    exp: 0,
    actions: [1, 2, 4],
    abnormal: []
  }
  $player = { x: 0, y: 0 }
  $map_now = 9
  $player[:x] = $MAP[$map_now][:coo][:x]
  $player[:y] = $MAP[$map_now][:coo][:y]
  $endscene = false
  $endtext = false
  $bgm = nil
end

def bgm_player
  Sound[:battle].stop
  Sound[:rest].stop
  Sound[:story].stop
  Sound[:item].stop
  Sound[:boss].stop
  Sound[:map].stop
  Sound[:event].stop
  Sound[:terror].stop
  Sound[:battleend].stop
  Sound[:ending].stop

  case $bgm
  when 1
    Sound[:boss].play
  when 2
    Sound[:ending].play
  when 3
    Sound[:terror].play
  when 4
    Sound[:battleend].play
  else
    Sound[$scene].play unless $scene == :gameover
  end
end

Window.load_resources do
  game_init
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
      if $endclock == 24 # 終焉の時計が24になったときの処理
        $speaker = 'terror'
        $message = 'ストーリーテラー「時は満ちた……。この世界に満ちた暗黒の意志で、復活を果たす！」'
        if Input.key_push?(K_SPACE)
          $speaker = 'shirokishi'
          $scene = :battle
          $bgm = 3
          $battle = Battle.new(4)
        end
      else
        $top_bar_message = '進むタイルを選べ'
        $bar_message = '移動'
        $message = 'どこに進もうか'
        if $map_confirm
          $message = check_event($map_now)
          if Input.key_push?(K_SPACE)
            if $map_now == 9
              m = -1
            elsif $map_now > 9
              m = $map_now - 1
            elsif $map_now < 9
              m = $map_now
            end
            unless m == -1
              case $mapevents[m]
              when 0 # start
              when 1 # battle
                $scene = :battle
                $battle = Battle.new(($endclock / 6).floor)
              when 2 # event
                $scene = :event
                $event_no = rand(1..5)
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
                $story = Story.new
              end
            end
            $map_confirm = false
            fade_in unless m.zero? || $mapevents[m].zero?
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
    when :start
      if Input.key_push?(K_SPACE)
        $scene = :map
        bgm_player
        fade_in
      end
    when :gameover
      game_init if Input.key_push?(K_SPACE)
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
        Window.draw($MAP[n][:coo][:x] - 27, $MAP[n][:coo][:y] - 16, Image["icon#{event_id}"])
      end
      Window.draw($player[:x] - 32, $player[:y] - 36, Image[:player_hexa])

    when :battle
      Window.draw(0, 0, Image[:bg_battle])
      Window.draw(0, 0, Image[:enemy13]) if $endclock == 24
      Window.draw(0, 0, Image[:bg_story5]) if $battle.enemy_id == 14
      Window.draw(0, 0, Image[:bg_story6]) if $battle.enemy_id == 15
      Window.draw(0, 0, Image[:bg_story7]) if $battle.enemy_id == 16
      Window.draw(0, 0, Image[:bg_story8]) if $battle.enemy_id == 17

      if $turn == :player_turn
        Window.draw(1040, 100, Image[:turn_you])
      elsif $turn == :enemy_turn
        Window.draw(1040, 100, Image[:turn_enemy])
      end
      if $next_turn == :player_select
        Window.draw(1050, 140, Image[:turn_next_you])
      else
        Window.draw(1050, 140, Image[:turn_next_enemy])
      end

      Window.draw(480, 100, Image["enemy#{$battle.enemy_id}"]) unless $endclock == 24
      Window.draw_box_fill(480, 432, 800, 496, [128, 0, 0, 0])
      Window.draw_box_fill(590, 440, 790, 460, [0, 0, 0])
      Window.draw_box_fill(592, 442, 592 + (196 * $battle.enemy_hp / $battle.enemy_max_hp).floor, 458, [0, 255, 0])
      Window.draw_font(490, 442, "HP:#{$battle.enemy_hp}/#{$battle.enemy_max_hp}", $font16)
      Window.draw_font(490, 468, "Next:#{$ENEMY_ACTION_NAME[$enemy_action]}", $font16)
      Window.draw(722, 468, Image[:atk_up]) if $battle.enemy_tmp_atk.positive?
      Window.draw(740, 468, Image[:def_up]) if $battle.enemy_tmp_def.positive?
      Window.draw(758, 468, Image[:atk_down]) if $battle.enemy_tmp_def.negative?
      Window.draw(774, 468, Image[:def_down]) if $battle.enemy_tmp_def.negative?
    when :rest
      Window.draw(0, 0, Image[:bg_rest])
    when :item
      Window.draw(0, 0, Image[:bg_item])
    when :event
      Window.draw(0, 0, Image["bg_event#{$event_no}"]) if (1..3) === $event_no
    when :story
      Window.draw(0, 0, Image["bg_story#{$story_id}"])
    when :ending
      $ending.execute_ending
    end

    # Bar
    Window.draw(340, 20, Image[:top_bar])
    Window.draw_font(640 - ($font20.get_width($top_bar_message) / 2), 34, $top_bar_message, $font20)
    Window.draw(980, 20, Image[:bar])
    Window.draw_font(1130 - ($font24m.get_width($bar_message) / 2), 32, $bar_message, $font24m)

    # 終焉の時計
    Window.draw(10, 10, Image[:clock])
    Window.draw_rot(-20, -20, Image[:clock_hands], $endclock * 15, 100, 100)

    # Text
    Window.draw(0, 540, Image[:bg_message])
    Window.draw(10, 550, Image[:icon_frame])
    Window.draw(16, 556, Image["i_#{$speaker}"])
    Window.draw_font(180, 550, $message, $font20)
    Window.draw_font(180, 580, $message2, $font20)

    # 選択肢
    unless $selects.empty?
      Window.draw_box_fill(180, Window.height - 46, Window.width - 330, Window.height - 44, [255,255,255])
      select_message = ''
      $selects.each_with_index do |selection, idx|
        select_message += "#{idx + 1}. #{selection}　"
      end
      Window.draw_font(180, Window.height - 34, "#{select_message}", $font20)
    end

    # Stats
    if $scene == :battle
      Window.draw(Window.width - 316, 578, Image[:atk_up]) if $battle.player_tmp_atk.positive?
      Window.draw(Window.width - 298, 578, Image[:def_up]) if $battle.player_tmp_def.positive?
      Window.draw(Window.width - 280, 578, Image[:atk_down]) if $battle.player_tmp_def.negative?
      Window.draw(Window.width - 262, 578, Image[:def_down]) if $battle.player_tmp_def.negative?
      Window.draw(Window.width - 244, 578, Image[:poison]) if $player_stats[:abnormal].include?(0)
      Window.draw(Window.width - 226, 578, Image[:fire]) if $player_stats[:abnormal].include?(1)
      Window.draw(Window.width - 208, 578, Image[:curse]) if $player_stats[:abnormal].include?(2)
    end
    Window.draw_font(Window.width - 316, 600, "攻撃力：#{$player_stats[:base_atk]}", $font16)
    Window.draw_font(Window.width - 156, 600, "防御力：#{$player_stats[:base_def]}", $font16)
    Window.draw_font(Window.width - 316, 626, "敏捷性：#{120 - $player_stats[:sp]}", $font16)
    Window.draw_font(Window.width - 156, 626, "経験値：#{$player_stats[:exp]}", $font16)
    Window.draw_box_fill(Window.width - 210, 552, Window.width - 10, 572, [0, 0, 0])
    Window.draw_box_fill(Window.width - 208, 554, Window.width - 208 + (196 * $player_stats[:hp] / $player_stats[:max_hp]).floor, 570, [0, 255, 0])
    Window.draw_font(Window.width - 316, 556, "HP:#{$player_stats[:hp]}/#{$player_stats[:max_hp]}", $font16)

    if $scene == :gameover # ゲームオーバー表示
      Window.draw_box_fill(0, 0, Window.width, Window.height, [0, 0, 0])
      Window.draw_font((Window.width - 320) / 2, Window.height / 2 - 16, 'GAMEOVER', $font64)
      Window.draw_font((Window.width - $font32.get_width('PUSH SPACE KEY TO RESTART')) / 2, Window.height / 2 + 60, 'PUSH SPACE KEY TO RESTART', $font32)
    end

    if $scene == :start # タイトル画面
      Window.draw_box_fill(0, 0, Window.width, Window.height, [255, 255, 255])
      Window.draw(0, 0, Image[:bg_title])
      Window.draw(Window.width / 2 - 458, 200, Image[:logo])
      Window.draw_font((Window.width - $font32.get_width('PUSH SPACE KEY')) / 2, Window.height / 2 + 80, 'PUSH SPACE KEY', $font32)
    end

    if $scene == :ending
      Window.draw(0, 0, Image["ending#{$ending_bg}"])
      Window.draw(0, 0, Image[:endscene]) if $endscene
      Window.draw(Window.width / 2 - 178, Window.height / 2 - 70 ,Image[:endtext]) if $endtext
    end

    next unless $fade_flg # フェード処理

    opacity = (255 / 45 * $fade_frames).floor
    Window.draw_box_fill(0, 0, Window.width, Window.height, [opacity, 0, 0, 0])
    $fade_frames -= 1
    $fade_flg = false if $fade_frames == 0
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

    bgm_player
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
        if $player_stats[:exp] < 20
          @get_skill = false
        else
          @get_skill = true
          @get_skill_id = [3, 9, 10, 11, 12].sample
          if $player_stats[:actions].include?(@get_skill_id)
            @had_skill = true
          else
            @had_skill = false
            $player_stats[:actions].push(@get_skill_id)
            $player_stats[:exp] -= 20
          end
        end
        $selects = []
        @rest_step = 3
      end
    when 1
      $message = '体を休めて体力を回復した'
      if Input.key_push?(K_SPACE)
        $scene = :map
        bgm_player
      end
    when 2
      $message = '経験値をステータスに変換する'
      $selects = ['攻撃力', '防御力', '敏捷性', '終了する']
      if Input.key_push?(K_1) && $player_stats[:exp].positive?
        $player_stats[:exp] -= 1
        $player_stats[:base_atk] += 1
        $message2 = '攻撃力が上がった'
      elsif Input.key_push?(K_2) && $player_stats[:exp].positive?
        $player_stats[:exp] -= 1
        $player_stats[:base_def] += 1
        $message2 = '防御力が上がった'
      elsif Input.key_push?(K_3) && $player_stats[:exp].positive?
        if $player_stats[:sp] > 20
          $player_stats[:exp] -= 1
          $player_stats[:sp] -= 1
          $message2 = '敏捷性が上がった'
        else
          $message2 = '敏捷性はこれ以上上がらない'
        end
      elsif Input.key_push?(K_4)
        $scene = :map
        $selects = []
        $message2 = ''
        bgm_player
      end
    when 3
      if @get_skill
        if @had_skill
          $message = '何も得られなかった'
        else
          $message = "#{$ACTION_NAME[@get_skill_id]}を身につけた"
        end
      else
        $message = '経験値が足りない'
      end
      if Input.key_push?(K_SPACE)
        $scene = :map
        bgm_player
      end
    end
  end
end

# Itemクラス
class Item
  def initialize
    @steps = 0
    $top_bar_message = '宝箱を見つけた'
    loop do
      @get_item_id = rand($ITEMS.count)
      break unless $get_items.include?(@get_item_id)
    end
    $get_items.push(@get_item_id)
    bgm_player
  end

  def execute_item
    case @steps
    when 0
      $message = "#{$ITEMS[@get_item_id][:name]}を手に入れた"
      if Input.key_push?(K_SPACE)
        $player_stats[$ITEMS[@get_item_id][:stats]] += $ITEMS[@get_item_id][:value]
        @steps += 1
      end
    when 1
      $message = "#{$ITEMS[@get_item_id][:stats_name]}が上がった"
      if Input.key_push?(K_SPACE)
        $scene = :map
        bgm_player
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

# Storyクラス
class Story
  def initialize
    $bar_message = '物語の世界'
    @steps = 0
    bgm_player
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
        $message = 'ジャック「大きな豆の木を登っていたら、恐ろしい巨人に追いかけられてるんだ！」'
        $speaker = 'jack'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 3
        $message = 'ジャック「助けてくれ〜！」'
        if Input.key_push?(K_SPACE)
          $speaker = 'shirokishi'
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

# Eventクラス
class Event
  def initialize
    @steps = 0
    $bar_message = 'イベント'
    bgm_player
  end

  def execute_event
    case $event_no
    when 1
      $top_bar_message = 'ブレーメンの音楽隊の世界'
      case @steps
      when 0
        $message = '動物が集まっている'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 1
        $message = 'ロバ「俺がこの音楽隊のリーダーにふさわしいと思う」'
        $speaker = 'donkey'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 2
        $message = '鶏「いやいや、ここは自分がリーダーをやるべきだ」'
        $speaker = 'rooster'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 3
        $message = '犬「何を言っているんだ？自分だろう」'
        $speaker = 'dog'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 4
        $message = '猫「誰でもいいから好きにしてくれ……」'
        $speaker = 'cat2'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 5
        $message = 'ロバ「そこの騎士の人！誰が俺たちのリーダーにふさわしいか、決めてくれないか？」'
        $speaker = 'donkey'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 6
        $message = '誰がリーダーにふさわしいと思う？'
        $speaker = 'shirokishi'
        $selects = ['ロバ', '鶏', '犬', '猫']
        if Input.key_push?(K_1)
          $player_stats[:base_atk] += ($player_stats[:base_atk] * 0.1).floor
          $selects = []
          @steps += 1
          $speaker = 'donkey'
        elsif Input.key_push?(K_2)
          $player_stats[:base_def] += ($player_stats[:base_def] * 0.1).floor
          $selects = []
          @steps += 2
          $speaker = 'rooster'
        elsif Input.key_push?(K_3)
          $player_stats[:sp] -= ($player_stats[:sp] * 0.1).floor
          $player_stats[:sp] = 20 if $player_stats[:sp] < 20
          $selects = []
          @steps += 3
          $speaker = 'dog'
        elsif Input.key_push?(K_4)
          $player_stats[:exp] += 5
          $selects = []
          @steps += 4
          $speaker = 'cat2'
        end
      when 7
        $message = 'ロバ「見る目があるじゃないか」'
        $message2 = '攻撃力が上がった'
        if Input.key_push?(K_SPACE)
          $message2 = ''
          $scene = :map
          bgm_player
          $speaker = 'shirokishi'
        end
      when 8
        $message = '鶏「当然ね」'
        $message2 = '防御力が上がった'
        if Input.key_push?(K_SPACE)
          $message2 = ''
          $scene = :map
          bgm_player
          $speaker = 'shirokishi'
        end
      when 9
        $message = '犬「どうもありがとう」'
        $message2 = '敏捷性が上がった'
        if Input.key_push?(K_SPACE)
          $message2 = ''
          $scene = :map
          bgm_player
          $speaker = 'shirokishi'
        end
      when 10
        $message = '猫「俺じゃないと思うんだけどな〜……」'
        $message2 = '経験値を得た'
        if Input.key_push?(K_SPACE)
          $message2 = ''
          $scene = :map
          bgm_player
          $speaker = 'shirokishi'
        end
      end
    when 2
      $top_bar_message = '白雪姫の世界'
      case @steps
      when 0
        $speaker = 'dwarf'
        $message = '小人「わしたちは7人の小人」'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 1
        $message = '小人「よかったら休んでいきなさい」'
        if Input.key_push?(K_SPACE)
          @steps += 1
          $player_stats[:hp] += ($player_stats[:max_hp] * 0.2).floor
          $player_stats[:hp] = $player_stats[:max_hp] if $player_stats[:hp] > $player_stats[:max_hp]
          $player_stats[:base_atk] += 5
          $player_stats[:base_def] += 5
          $player_stats[:sp] -= 5
          $player_stats[:sp] = 20 if $player_stats[:sp] < 20
        end
      when 2
        $speaker = 'shirokishi'
        $message = '休憩して体力を回復した'
        $message2 = '装備を整備してもらってステータスが上昇した'
        if Input.key_push?(K_SPACE)
          $scene = :map
          bgm_player
          $message2 = ''
        end
      end
    when 3
      $top_bar_message = 'ヘンゼルとグレーテルの世界'
      case @steps
      when 0
        $message = 'お菓子の家がある'
        @steps += 1 if Input.key_push?(K_SPACE)
      when 1
        $message = '誰もいないようだ。どうする？'
        $selects = ['お腹いっぱい食べる', '少しだけ食べる']
        if Input.key_push?(K_1)
          $player_stats[:hp] = $player_stats[:max_hp]
          $selects = []
          @steps += 1
        elsif Input.key_push?(K_2)
          $player_stats[:hp] += ($player_stats[:max_hp] * 0.2).floor
          $player_stats[:max_hp] += ($player_stats[:max_hp] * 0.2).floor
          $selects = []
          @steps += 2
        end
      when 2
        $message = '体力が全回復した'
        if Input.key_push?(K_SPACE)
          $scene = :map
          bgm_player
        end
      when 3
        $message = '体力の最大値が上がった'
        if Input.key_push?(K_SPACE)
          $scene = :map
          bgm_player
        end
      end
    when 4
      $scene = :battle
      $battle = Battle.new(($endclock / 6).floor)
    when 5
      $scene = :rest
      $rest = Rest.new
    end
  end
end

class Ending
  def initialize
    @steps = 0
  end

  def execute_ending
    case @steps
    when 0
      $speaker = 'terror'
      $ending_bg = 1
      $message = 'ストーリーテラー「ぐはあ……この私が……」'
      @steps += 1 if Input.key_push?(K_SPACE)
    when 1
      $speaker = 'shirokishi'
      $message = '「諦めろ……これでとどめだ！」'
      @steps += 1 if Input.key_push?(K_SPACE)
    when 2
      $speaker = 'terror'
      $message = 'ストーリーテラー「ぐわあぁぁ…………！！」'
      @steps += 1 if Input.key_push?(K_SPACE)
    when 3
      $speaker = 'shirokishi'
      $ending_bg = 2
      $message = '「決着が……ついたな」'
      @steps += 1 if Input.key_push?(K_SPACE)
    when 4
      $message = '「世界が美しい元の姿に戻っていく……」'
      if Input.key_push?(K_SPACE)
        @steps += 1
        fade_in
        $bgm = 2
        bgm_player
      end
    when 5
      $endscene = true
      @steps += 1 if Input.key_push?(K_SPACE)
    when 6
      $endtext = true
      if Input.key_push?(K_SPACE)
        Sound[:ending].stop
        game_init
      end
    end
  end
end

# Battleクラス
class Battle
  attr_accessor :enemy_hp, :enemy_max_hp, :enemy_id, :player_tmp_atk, :player_tmp_def, :enemy_tmp_atk, :enemy_tmp_def

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

    @enemy_tmp_atk = 0
    @enemy_tmp_def = 0
    @player_tmp_atk = 0
    @player_tmp_def = 0

    $top_bar_message = "#{@enemy_stats[:name]}が現れた"
    @battle_phase = check_speed

    $bgm = 1 if (5..8) === rank
    bgm_player
    $bgm = 0
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
      @selected_player_actions.sort!
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
      @enemy_tmp_def = 0
      if Input.key_push?(K_SPACE)
        @battle_phase = check_speed
        if @enemy_hp.zero?
          $bgm = 4
          bgm_player
          $bgm = 0
          @battle_phase = :win
          $player_stats[:exp] += @enemy_stats[:exp]
        end
      end

    when :enemy_select
      $message = "#{@enemy_stats[:name]}の行動！"
      if Input.key_push?(K_SPACE)
        enemy_action($enemy_action)
        @battle_phase = :enemy_action
        # 状態異常処理
        if $player_stats[:abnormal].include?(0)
          poison_dmg = ($player_stats[:max_hp] * 0.05).floor
          $player_stats[:hp] -= poison_dmg
          $player_stats[:hp] = 0 if $player_stats[:hp].negative?
          $message2 += "毒で#{poison_dmg}ダメージを受けた。"
        end
        if $player_stats[:abnormal].include?(1)
          fire_dmg = ($player_stats[:max_hp] * 5 / ($player_stats[:def] + @player_tmp_def)).floor - $player_stats[:base_def]
          fire_dmg = 0 if fire_dmg.negative?
          $player_stats[:hp] -= fire_dmg
          $player_stats[:hp] = 0 if $player_stats[:hp].negative?
          $message2 += "火傷で#{fire_dmg}ダメージを受けた。"
        end
        if $player_stats[:abnormal].include?(2)
          curse_dmg = ($player_stats[:max_hp] * 0.1).floor
          $player_stats[:hp] -= curse_dmg
          $player_stats[:hp] = 0 if $player_stats[:hp].negative?
          $message2 += "呪いで#{poison_dmg}ダメージを受けた。"
        end
      end

    when :enemy_action
      @player_tmp_def = 0
      if Input.key_push?(K_SPACE)
        $enemy_action = @enemy_action_table.sample
        $message2 = ''
        @battle_phase = check_speed
        @battle_phase = :lose if $player_stats[:hp].zero?
      end
    when :win
      case @enemy_stats[:id]
      when 14
        $battle_ex_message = '赤ずきんが仲間になった。紅天撃を身につけた'
      when 15
        $battle_ex_message = 'ジャックが仲間になった。豆料理を身につけた'
      when 16
        $battle_ex_message = '長靴を履いた猫が仲間になった。ねこパンチを身につけた'
      when 17
        $battle_ex_message = 'シンデレラが仲間になった。灰姫の祈祷を身につけた'
      end
      $message = "勝利した。#{$battle_ex_message}"
      $selects = []
      $player_stats[:abnormal] = []
      if Input.key_push?(K_SPACE)
        case @enemy_stats[:id]
        when 14
          $player_stats[:actions].push(5)
        when 15
          $player_stats[:actions].push(6)
        when 16
          $player_stats[:actions].push(7)
        when 17
          $player_stats[:actions].push(8)
        end
        $scene = :map
        $battle_ex_message = ''
        bgm_player
        if @enemy_id == 13
          $scene = :ending
          $ending = Ending.new
        end
      end
    when :lose
      $message = '敗北した'
      $selects = []
      if Input.key_push?(K_SPACE)
        $scene = :gameover
        bgm_player
      end
    end

    if (@battle_phase == :player_select) || (@battle_phase == :player_action)
      $turn = :player_turn
    elsif (@battle_phase == :enemy_select) || (@battle_phase == :enemy_action)
      $turn = :enemy_turn
    end
  end

  def player_action(id)
    case id
    when 1 # 攻撃
      @give_dmg = (($player_stats[:base_atk] + 20) * ($player_stats[:atk] + @player_tmp_atk) / (@enemy_stats[:def] + @enemy_tmp_def) - @enemy_stats[:base_def]).floor
      @give_dmg = 0 if @give_dmg.negative?
      @enemy_hp -= @give_dmg
      @enemy_hp = 0 if @enemy_hp.negative?
      $message = "攻撃！#{@give_dmg}ダメージを与えた"
    when 2 # 防御
      @player_tmp_def = 50
      $message = '防御の姿勢に入った'
    when 3 # 集中
      @player_tmp_atk += 10
      $message = '集中して攻撃力が上がった'
    when 4 # 警戒
      @give_dmg = (($player_stats[:base_atk] + 10) * ($player_stats[:atk] + @player_tmp_atk) / (@enemy_stats[:def] + @enemy_tmp_def) - @enemy_stats[:base_def]).floor
      @give_dmg = 0 if @give_dmg.negative?
      @enemy_hp -= @give_dmg
      @enemy_hp = 0 if @enemy_hp.negative?
      @player_tmp_def = 30
      $message = "警戒しながら攻撃！#{@give_dmg}ダメージを与えた"
    when 5 # 紅天撃 防御上昇無視
      @give_dmg = (($player_stats[:base_atk] + 30) * ($player_stats[:atk] + @player_tmp_atk) / @enemy_stats[:def] - @enemy_stats[:base_def]).floor
      @give_dmg = 0 if @give_dmg.negative?
      @enemy_hp -= @give_dmg
      @enemy_hp = 0 if @enemy_hp.negative?
      $message = "紅天撃！#{@give_dmg}ダメージを与えた"
    when 6 # 豆料理
      @player_tmp_atk += 30
      $message = '巨人の豆を食べて攻撃力が上がった'
    when 7 # ねこパンチ
      @give_dmg = (($player_stats[:base_atk] + 40) * ($player_stats[:atk] + @player_tmp_atk) / (@enemy_stats[:def] + @enemy_tmp_def) - @enemy_stats[:base_def]).floor
      @give_dmg = 0 if @give_dmg.negative?
      @enemy_hp -= @give_dmg
      @enemy_hp = 0 if @enemy_hp.negative?
      $message = "ねこパンチ！#{@give_dmg}ダメージを与えた"
    when 8 # 灰姫の祈祷
      @gain_hp = ($player_stats[:max_hp] * 0.15).floor
      $player_stats[:hp] += @gain_hp
      $player_stats[:hp] = $player_stats[:max_hp] if $player_stats[:hp] > $player_stats[:max_hp]
      $player_stats[:abnormal] = []
      $message = "シンデレラの祈りで体力を#{@gain_hp}回復し、状態異常を治癒した"
    when 9 # 攻撃＋
      @give_dmg = (($player_stats[:base_atk] + 30) * ($player_stats[:atk] + @player_tmp_atk) / (@enemy_stats[:def] + @enemy_tmp_def) - @enemy_stats[:base_def]).floor
      @give_dmg = 0 if @give_dmg.negative?
      @enemy_hp -= @give_dmg
      @enemy_hp = 0 if @enemy_hp.negative?
      $message = "攻撃！#{@give_dmg}ダメージを与えた"
    when 10 # 防御＋
      @player_tmp_def = 80
      $message = '防御の姿勢に入った'
    when 11 # 集中＋
      @player_tmp_atk += 20
      $message = '集中して攻撃力が上がった'
    when 12 # 警戒＋
      @give_dmg = (($player_stats[:base_atk] + 20) * ($player_stats[:atk] + @player_tmp_atk) / (@enemy_stats[:def] + @enemy_tmp_def) - @enemy_stats[:base_def]).floor
      @give_dmg = 0 if @give_dmg.negative?
      @enemy_hp -= @give_dmg
      @enemy_hp = 0 if @enemy_hp.negative?
      @player_tmp_def = 50
      $message = "警戒しながら攻撃！#{@give_dmg}ダメージを与えた"
    end
  end

  def enemy_action(id)
    case id
    when 1 # 攻撃
      @take_dmg = ((@enemy_stats[:base_atk] + 20) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $message = "#{@enemy_stats[:name]}の攻撃で#{@take_dmg}ダメージを受けた"
    when 2 # 防御
      @enemy_tmp_def = 20
      $message = "#{@enemy_stats[:name]}は防御の姿勢に入った"
    when 3 # 怒り
      @enemy_tmp_atk += 10
      $message = "#{@enemy_stats[:name]}は怒って攻撃力が上がった"
    when 4 # 警戒
      @take_dmg = ((@enemy_stats[:base_atk] + 15) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      @enemy_tmp_def = 10
      $message = "#{@enemy_stats[:name]}の警戒行動で#{@take_dmg}ダメージを受けた"
    when 5 # 毒牙
      @take_dmg = ((@enemy_stats[:base_atk] + 30) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $player_stats[:abnormal].push(0) unless $player_stats[:abnormal].include?(0)
      $message = "#{@enemy_stats[:name]}の毒牙で#{@take_dmg}ダメージを受けた。毒を受けた"
    when 6 # ブレス
      @take_dmg = ((@enemy_stats[:base_atk] + 40) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $player_stats[:abnormal].push(1) unless $player_stats[:abnormal].include?(1)
      $message = "#{@enemy_stats[:name]}のブレスで#{@take_dmg}ダメージを受けた。火傷を負った"
    when 7 # 呪い
      $player_stats[:abnormal].push(2) unless $player_stats[:abnormal].include?(2)
      $message = "#{@enemy_stats[:name]}は呪いをかけた"
    when 8 # 激昂
      @enemy_tmp_atk += 20
      $message = "#{@enemy_stats[:name]}は怒って攻撃力が上がった"
    when 9 # 攻撃＋
      @take_dmg = ((@enemy_stats[:base_atk] + 40) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $message = "#{@enemy_stats[:name]}の攻撃で#{@take_dmg}ダメージを受けた"
    when 10 # 防御＋
      @enemy_tmp_def = 30
      $message = "#{@enemy_stats[:name]}は防御の姿勢に入った"
    when 11 # 警戒＋
      @take_dmg = ((@enemy_stats[:base_atk] + 30) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      @enemy_tmp_def = 20
      $message = "#{@enemy_stats[:name]}の警戒行動で#{@take_dmg}ダメージを受けた"
    when 12 # 威圧
      @player_tmp_def -= 25
      @take_dmg = ((@enemy_stats[:base_atk] + 20) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $message = "#{@enemy_stats[:name]}の威圧で#{@take_dmg}ダメージを受けた"
    when 13 # 呪詛
      @take_dmg = ((@enemy_stats[:base_atk] + 20) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $player_stats[:abnormal].push(2) unless $player_stats[:abnormal].include?(2)
      $message = "#{@enemy_stats[:name]}の呪詛で#{@take_dmg}ダメージを受け、呪いを受けた"
    when 14 # 連撃掌
      @take_dmg = ((@enemy_stats[:base_atk] + 35) * (@enemy_stats[:atk] + @enemy_tmp_atk) / $player_stats[:def] - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $message = "#{@enemy_stats[:name]}の連撃掌で#{@take_dmg}ダメージを受けた"
    when 15 # 遠吠え
      @enemy_tmp_atk += 20
      @enemy_tmp_def = 30
      $message = "#{@enemy_stats[:name]}は遠吠えしてステータスを上げた"
    when 16 # デバフ＋攻撃
      @player_tmp_def -= 25
      @take_dmg = ((@enemy_stats[:base_atk] + 25) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $message = "#{@enemy_stats[:name]}の闇刻波で#{@take_dmg}ダメージを受けた"
    when 17 # 状態異常全て
      $player_stats[:abnormal].push(0) unless $player_stats[:abnormal].include?(0)
      $player_stats[:abnormal].push(1) unless $player_stats[:abnormal].include?(1)
      $player_stats[:abnormal].push(2) unless $player_stats[:abnormal].include?(2)
      $message = "#{@enemy_stats[:name]}の致死の儀で、呪い・毒・火傷を受けた"
    when 18 # 防御無視攻撃
      @take_dmg = ((@enemy_stats[:base_atk] + 40) * (@enemy_stats[:atk] + @enemy_tmp_atk) / $player_stats[:def] - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $message = "#{@enemy_stats[:name]}の死霊撃で#{@take_dmg}ダメージを受けた"
    when 19 # 攻撃防御バフ
      @enemy_tmp_atk += 30
      @enemy_tmp_def = 30
      $message = "#{@enemy_stats[:name]}は練怨術でステータスを上げた"
    when 20 # バフ解除
      @player_tmp_atk = 0
      @player_tmp_def = 0
      $message = "#{@enemy_stats[:name]}の解呪で強化が無効化された"
    when 21 # 攻撃
      @take_dmg = ((@enemy_stats[:base_atk] + 50) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      $message = "#{@enemy_stats[:name]}の攻撃で#{@take_dmg}ダメージを受けた"
    when 22 # 警戒
      @take_dmg = ((@enemy_stats[:base_atk] + 40) * (@enemy_stats[:atk] + @enemy_tmp_atk) / ($player_stats[:def] + @player_tmp_def) - $player_stats[:base_def]).floor
      @take_dmg = 0 if @take_dmg.negative?
      $player_stats[:hp] = $player_stats[:hp] - @take_dmg
      $player_stats[:hp] = 0 if $player_stats[:hp].negative?
      @enemy_tmp_def = 50
      $message = "#{@enemy_stats[:name]}の警戒行動で#{@take_dmg}ダメージを受けた"
    end
  end
end
