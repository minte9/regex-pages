/**
 * Metacharacters ^$
 * 
 * A regular expression is written in the form of 
 *      /pattern/modifiers
 * 
 * The syntax is borrowed from Perl
 *      /g means all matches
 */

s1 = 'Cat at the beggining';
s2 = 'At the end dog';
s3 = 'Birds everywhere bird';

p1 = /^cat/ig;
p2 = /dog$/g;
p3 = /bird/gi;

m1 = s1.match(p1);
m2 = s2.match(p2);
m3 = s3.match(p3);

console.log(m1); // Cat
console.log(m2); // dog
console.log(m3); // Bird, bird