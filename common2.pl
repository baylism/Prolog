common(L1, L2, I) :-
  common_h(L1, L2, I),
  !.

common_h([], _, []).

% common(L1, L2, I) :-
%   L1 = [H|T],
%   member(H, L2),
%   common(T, L2, I),
%   append(H, I, I).
%
% common(L1, L2, I) :-
%   L1 = [H|T],
%   common(T, L2, I).

common_h([H|T], L2, [H|I]) :-
  member(H, L2),
  common(T, L2, I).

common_h([_|T], L2, I) :-
  common(T, L2, I).
