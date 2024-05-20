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
  { name: 'シンデレラの世界', key: 'story_cind' },
]

$MAP = {
  a: { a:'', b:'d', c:'', d:'z', e:'x', f:'', g:'', h:'', i:'', j:'', k:'', l:'', m:'', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 98, y: 63}, event_id: 0 },
  b: { a:'a', b:'', c:'d', d:'', e:'z', f:'x', g:'', h:'', i:'', j:'', k:'', l:'', m:'', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 150, y: 63}, event_id: 1 },
  c: { a:'', b:'a', c:'', d:'', e:'', f:'z', g:'x', h:'', i:'', j:'', k:'', l:'', m:'', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 202, y: 63}, event_id: 2 },
  d: { a:'e', b:'', c:'', d:'', e:'d', f:'', g:'', h:'z', i:'x', j:'', k:'', l:'', m:'', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 72, y: 107}, event_id: 3 },
  e: { a:'w', b:'e', c:'', d:'a', e:'', f:'d', g:'', h:'', i:'z', j:'x', k:'', l:'', m:'', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 124, y: 107}, event_id: 4 },
  f: { a:'', b:'w', c:'e', d:'', e:'a', f:'', g:'d', h:'', i:'', j:'z', k:'x', l:'', m:'', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 176, y: 107}, event_id: 5 },
  g: { a:'', b:'', c:'w', d:'', e:'', f:'a', g:'', h:'', i:'', j:'', k:'z', l:'x', m:'', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 228, y: 107}, event_id: 6 },
  h: { a:'', b:'', c:'', d:'e', e:'', f:'', g:'', h:'', i:'d', j:'', k:'', l:'', m:'x', n:'', o:'', p:'', q:'', r:'', s:'', coo:{x: 46, y: 151}, event_id: 7 },
  i: { a:'', b:'', c:'', d:'w', e:'e', f:'', g:'', h:'a', i:'', j:'d', k:'', l:'', m:'z', n:'x', o:'', p:'', q:'', r:'', s:'', coo:{x: 98, y: 151}, event_id: 8 },
  j: { a:'', b:'', c:'', d:'', e:'w', f:'e', g:'', h:'', i:'a', j:'', k:'d', l:'', m:'', n:'z', o:'x', p:'', q:'', r:'', s:'', coo:{x: 150, y: 151} },
  k: { a:'', b:'', c:'', d:'', e:'', f:'w', g:'e', h:'', i:'', j:'a', k:'', l:'d', m:'', n:'', o:'z', p:'x', q:'', r:'', s:'', coo:{x: 202, y: 151}, event_id: 9 },
  l: { a:'', b:'', c:'', d:'', e:'', f:'', g:'w', h:'', i:'', j:'', k:'a', l:'', m:'', n:'', o:'', p:'z', q:'', r:'', s:'', coo:{x: 254, y: 151}, event_id: 10 },
  m: { a:'', b:'', c:'', d:'', e:'', f:'', g:'', h:'w', i:'e', j:'', k:'', l:'', m:'', n:'d', o:'', p:'', q:'x', r:'', s:'', coo:{x: 72, y: 195}, event_id: 11 },
  n: { a:'', b:'', c:'', d:'', e:'', f:'', g:'', h:'', i:'w', j:'e', k:'', l:'', m:'a', n:'', o:'d', p:'', q:'z', r:'x', s:'', coo:{x: 124, y: 195}, event_id: 12 },
  o: { a:'', b:'', c:'', d:'', e:'', f:'', g:'', h:'', i:'', j:'w', k:'e', l:'', m:'', n:'a', o:'', p:'d', q:'', r:'z', s:'x', coo:{x: 176, y: 195}, event_id: 13 },
  p: { a:'', b:'', c:'', d:'', e:'', f:'', g:'', h:'', i:'', j:'', k:'w', l:'e', m:'', n:'', o:'a', p:'', q:'', r:'', s:'z', coo:{x: 228, y: 195}, event_id: 14 },
  q: { a:'', b:'', c:'', d:'', e:'', f:'', g:'', h:'', i:'', j:'', k:'', l:'', m:'w', n:'e', o:'', p:'', q:'', r:'d', s:'', coo:{x: 98, y: 239}, event_id: 15 },
  r: { a:'', b:'', c:'', d:'', e:'', f:'', g:'', h:'', i:'', j:'', k:'', l:'', m:'', n:'w', o:'e', p:'', q:'a', r:'', s:'d', coo:{x: 150, y: 239}, event_id: 16 },
  s: { a:'', b:'', c:'', d:'', e:'', f:'', g:'', h:'', i:'', j:'', k:'', l:'', m:'', n:'', o:'w', p:'e', q:'', r:'a', s:'', coo:{x: 202, y: 239}, event_id: 17 }
}