$ENEMIES = [
  # Rank 1
  [
    { id: 1, name: 'ヘルハウンド', hp: 80, atk: 100, base_atk: 10, def: 100, base_def: 10, sp: 110, exp: 5, actions: [1, 2] },
    { id: 2, name: 'ゴブリン', hp: 65, atk: 100, base_atk: 15, def: 100, base_def: 10, sp: 90, exp: 5, actions: [1, 1, 3] },
    { id: 3, name: 'スカル', hp: 50, atk: 105, base_atk: 15, def: 80, base_def: 10, sp: 100, exp: 5, actions: [1, 2, 4] },
  ],
  # Rank 2
  [
    { id: 4, name: 'ウォーロック', hp: 70, atk: 100, base_atk: 15, def: 100, base_def: 12, sp: 95, exp: 12, actions: [2, 4, 7] },
    { id: 5, name: 'ガーゴイル', hp: 85, atk: 100, base_atk: 15, def: 100, base_def: 14, sp: 80, exp: 14, actions: [1, 3, 5] },
    { id: 6, name: 'オーガ', hp: 110, atk: 100, base_atk: 20, def: 100, base_def: 13, sp: 99, exp: 15, actions: [1, 1, 3, 4] },
  ],
  # Rank 3
  [
    { id: 7, name: 'ハイドラ', hp: 120, atk: 100, base_atk: 25, def: 100, base_def: 18, sp: 72, exp: 20, actions: [9, 11, 5] },
    { id: 8, name: 'ミノタウロス', hp: 160, atk: 100, base_atk: 33, def: 100, base_def: 25, sp: 80, exp: 17, actions: [8, 9, 10, 11] },
    { id: 9, name: 'ワイバーン', hp: 140, atk: 100, base_atk: 28, def: 100, base_def: 25, sp: 65, exp: 19, actions: [9, 10, 11, 6] },
  ],
  # Rank 4
  [
    { id: 10, name: 'ドラゴン', hp: 210, atk: 100, base_atk: 40, def: 100, base_def: 35, sp: 60, exp: 21, actions: [8, 9, 9, 11, 6, 6] },
    { id: 11, name: 'デーモン', hp: 180, atk: 100, base_atk: 45, def: 100, base_def: 28, sp: 55, exp: 23, actions: [9, 7, 10, 11] },
    { id: 12, name: 'キマイラ', hp: 170, atk: 100, base_atk: 35, def: 100, base_def: 35, sp: 70, exp: 24, actions: [9, 5, 6, 10, 11] },
  ],
  # Rank 5 (ストーリーテラー)
  [
    { id: 13, name: 'ストーリーテラー', hp: 500, atk: 150, base_atk: 55, def: 150, base_def: 50, sp: 40, exp: 0, actions: [12, 14, 16, 17, 18, 19, 20] },
  ],
  # Rank 6 (赤ずきんボス)
  [
    { id: 14, name: '邪悪な狼', hp: 120, atk: 100, base_atk: 35, def: 100, base_def: 25, sp: 80, exp: 20, actions: [1, 2, 4, 15] },
  ],
  # Rank 7 (ジャックと豆の木ボス)
  [
    { id: 15, name: '破壊の巨人', hp: 150, atk: 100, base_atk: 40, def: 100, base_def: 20, sp: 100, exp: 20, actions: [1, 1, 3, 14] },
  ],
  # Rank 8 (長靴を履いた猫ボス)
  [
    { id: 16, name: '堕ちた国王', hp: 100, atk: 100, base_atk: 25, def: 100, base_def: 35, sp: 90, exp: 20, actions: [1, 2, 4, 4, 13] },
  ],
  # Rank 9 (シンデレラボス)
  [
    { id: 17, name: '恐怖の継母', hp: 80, atk: 100, base_atk: 30, def: 100, base_def: 20, sp: 60, exp: 20, actions: [1, 1, 2, 4, 12] },
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
