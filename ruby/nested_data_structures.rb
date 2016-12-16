#design and build a nested data structure to represent a real-world construct.

#Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.


frostbiting = {
  boats: [
    'JY15',
    'Laser',
    'Interclubs'
  ],
  sails: [
    'gybe',
    'main'
  ],
  equipment: [
    'sheets',
    'rudder',
    'tiller'
  ],
  gear: {
    spring: [
      'wetsuit',
      'shades',
    ],
    winter: [
      'drysuit',
      'wool hat',
      'warmer',
    ],
  },
}

p frostbiting[:boats]

p frostbiting[:gear][:winter]

p frostbiting[:gear][:winter][2]

p frostbiting[:gear][:spring].push('ball cap')

frostbiting[:equipment][1].replace('blocks')
p frostbiting[:equipment]

frostbiting[:equipment].insert(1, 'lines')
p frostbiting[:equipment]



