age_group_list = [
  '5-7',
  '7-9',
  '9-11',
  '11-14',
  '14-17',
  '17-30',
  '30 and above'
]

disciplines_list = [
  'ADJUSTABLE',
  'SPEED_QUAD',
  'SPEED-INLINE',
  'ARTISTIC',
  'ROLLER HOCKEY',
  'INLINE HOCKEY',
  'INLINE FREESTYLE'
]

age_group_list.each do |name|
  AgeGroup.create(name: name)
end

disciplines_list.each do |name|
  Discipline.create(name: name)
end
