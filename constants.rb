$ENEMIES = [
  # Rank 1
  [
    { id: 1, name: 'ヘルハウンド123', hp: 110, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, actions: [1, 2, 3] },
    { id: 2, name: 'ヘルハウンド2', hp: 90, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, actions: [1, 2, 3] },
  ],
  # Rank 2
  [
    { id: 3, name: 'ヘルハウンド3', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, actions: [1, 2, 3] },
    { id: 4, name: 'ヘルハウンド4', hp: 100, atk: 90, base_atk: 30, def: 110, base_def: 10, sp: 20, actions: [1, 2, 3] },
  ]
]

$MAPEVENT = [
  1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 6, 7, 8
]

$MAPEVENT_DESC = [
  { name: '戦闘', key: 'battle' }, # 1
  { name: 'イベント', key: 'event' }, # 2
  { name: 'アイテム', key: 'item' }, # 3
  { name: '宿屋', key: 'inn' }, # 4
  { name: '赤ずきんの世界', key: 'story_akz' },
  { name: 'ジャックと豆の木の世界', key: 'story_jack' },
  { name: '長靴を履いた猫の世界', key: 'story_cat' },
  { name: 'シンデレラの世界', key: 'story_cind' }
]

$MAP = [
  { id: 'a', d: 1, z: 3, x: 4, coo: { x: 98, y: 63 } },
  { id: 'b', a: 0, d: 2, z: 4, x: 5, coo: { x: 150, y: 63 } },
  { id: 'c', a: 1, z: 5, x: 6, coo: { x: 202, y: 63 } },
  { id: 'd', e: 0, d: 4, x: 8, z: 7, coo: { x: 72, y: 107 } },
  { id: 'e', w: 0, e: 1, a: 3, d: 5, z: 8, x: 9, coo: { x: 124, y: 107 } },
  { id: 'f', w: 1, e: 2, a: 4, d: 6, z: 9, x: 10, coo: { x: 176, y: 107 } },
  { id: 'g', w: 2, a: 5, z: 10, x: 11, coo: { x: 228, y: 107 } },
  { id: 'h', e: 3, d: 8, x: 12, coo: { x: 46, y: 151 } },
  { id: 'i', w: 3, e: 4, a: 7, d: 9, z: 12, x: 13, coo: { x: 98, y: 151 } },
  { id: 'j', w: 4, e: 5, a: 8, d: 10, z: 13, x: 14, coo: { x: 150, y: 151 } },
  { id: 'k', w: 5, e: 6, a: 9, d: 11, z: 14, x: 15, coo: { x: 202, y: 151 } },
  { id: 'l', w: 6, a: 10, z: 15, coo: { x: 254, y: 151 } },
  { id: 'm', w: 7, e: 8, d: 13, x: 16, coo: { x: 72, y: 195 } },
  { id: 'n', w: 8, e: 9, a: 12, d: 14, z: 16, x: 17, coo: { x: 124, y: 195 } },
  { id: 'o', w: 9, e: 10, a: 13, d: 15, z: 17, x: 18, coo: { x: 176, y: 195 } },
  { id: 'p', w: 10, e: 11, a: 14, z: 18, coo: { x: 228, y: 195 } },
  { id: 'q', w: 12, e: 13, d: 17, coo: { x: 98, y: 239 } },
  { id: 'r', w: 13, e: 14, a: 16, d: 18, coo: { x: 150, y: 239 } },
  { id: 's', w: 14, e: 15, a: 17, coo: { x: 202, y: 239 } }
]
