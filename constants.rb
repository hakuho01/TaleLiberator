$ENEMIES = [
  # Rank 1
  [
    { id: 1, name: 'ヘルハウンド', hp: 110, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 100, exp: 5, actions: [1, 2, 3] },
    { id: 2, name: 'ゴブリン', hp: 90, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 100, exp: 5, actions: [1, 2, 3] },
    { id: 3, name: 'スカル', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 100, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 2
  [
    { id: 4, name: 'ウォーロック', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
    { id: 5, name: 'ガーゴイル', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
    { id: 6, name: 'オーガ', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 3
  [
    { id: 7, name: 'ハイドラ', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
    { id: 8, name: '', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
    { id: 9, name: '', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 4
  [
    { id: 10, name: 'ドラゴン', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
    { id: 11, name: 'ミノタウロス', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
    { id: 12, name: 'キマイラ', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 5 (ストーリーテラー)
  [
    { id: 13, name: 'ストーリーテラー', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 6 (赤ずきんボス)
  [
    { id: 14, name: '邪悪な狼', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 7 (ジャックと豆の木ボス)
  [
    { id: 15, name: '破壊の巨人', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 8 (長靴を履いた猫ボス)
  [
    { id: 16, name: '堕ちた国王', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
  # Rank 9 (シンデレラボス)
  [
    { id: 17, name: '恐怖の継母', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, exp: 5, actions: [1, 2, 3] },
  ],
]

$MAPEVENT = [
  1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 6, 7, 8
]

$MAPEVENT_DESC = [
  { name: '何もない', key: 'none'},
  { name: '敵に遭遇した', key: 'battle' },
  { name: '何かが起こりそうだ', key: 'event' },
  { name: 'アイテムを見つけた', key: 'item' },
  { name: '休憩場所だ', key: 'inn' },
  { name: '赤ずきんの世界', key: 'story_akz' },
  { name: 'ジャックと豆の木の世界', key: 'story_jack' },
  { name: '長靴を履いた猫の世界', key: 'story_cat' },
  { name: 'シンデレラの世界', key: 'story_cind' },
  { name: '何もない', key: 'empty' }
]