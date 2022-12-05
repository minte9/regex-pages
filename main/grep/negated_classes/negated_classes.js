/**
 * Negated class [^ ]
 */

s = 'Iraqi Iraqian miqra liquor qasida qintar qoph zaqqum Qantas Iraq'
p = /(\w+)?q[^u](\w+)?/g
m = s.match(p)

console.log(m) // Iraqi, Iraqian, miqra, qasida, qintar, qoph, zaqqum