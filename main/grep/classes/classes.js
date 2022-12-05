/**
 * Character class []
 */

s1 = 'gray grey greay greey'
s2 = '<H1>aaa</H1> <H2>bbb</H2>'

p1 = /gr[ae]+y/g; // g AND r, a OR e, y 
p2 = /<H[1-6]>/ig;

m1 = s1.match(p1);
m2 = s2.match(p2);

console.log(m1); // gray, grey, greay, greey
console.log(m2); // H1, H2