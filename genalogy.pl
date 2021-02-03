parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).

male(adam).
male(john).
male(pat).
male(jacob).

female(eve).
female(lisa).
female(anne).
female(carol).

grantparent(adam, anne).
grantparent(eve, anne).
grantparent(adam, pat).
grantparent(eve, pat).
grantparent(john, jacob).


isGrandmother(X) :- female(X), grantparent(X, Y).
isGrandfather(X) :- male(X), grantparent(X, Y).
isMother(X) :- female(X), parent(X, Y).
isFather(X) :- male(X), parent(X, Y).

isGrandchild(A) :- grantparent(Y, A).
