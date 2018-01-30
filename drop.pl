% drop(L, N, Result)
/* Drop every N'th element from a list L. */

drop([], _, []).

drop_h([H|T], N, [H|Res], Count)
