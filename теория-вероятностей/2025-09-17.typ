= 17 сентября 2025

== Предельные теоремы последовательностей случайной величины

Пусть ${xi_i}_(i=1)^oo$ --- последовательность случайных величин $(Omega, cal(F), PP)$.

/ Сходимость ${xi_i}_(i=1)^oo$ к $xi$ по вероятности :

$ xi_i limits(-->)^P xi <=> forall epsilon > 0 space P{omega : |xi_i (omega) - xi(omega)| < epsilon} limits(-->)_(i->oo) 1. $

или:

$ xi_i limits(-->)^P xi <=> forall epsilon > 0 space P{|xi_i - xi| >= epsilon} limits(-->)_(i->oo) 0. $

/ Сходимость ${xi_i}_(i=1)^oo$ к $xi$ по распределению :

$ F_i (x) limits(-->)^omega_"weak" F_xi (x) <=> P{omega: xi_i (omega) < x} -> P{omega: xi(omega) < x}. $

Обозначают также $F_i (x) => F(x)$.

/ Сходимость ${xi_i}_(i=1)^oo$ к $xi$ почти наверное :

$ xi_i limits(-->)^"п.н." xi <=> P{omega: xi_i (omega) -> xi (omega)} = 1. $

Такую сходимость ещё называют сходимостью с вероятностью 1.

/ Сходимость ${xi_i}_(i=1)^oo$ к $xi$ в среднем :

$
  xi_i limits(-->)^"l.i.m." xi <=>cases(delim: "{", M|xi_i| < +oo\,, M|xi| < +oo\,, M|xi_i - xi|^2 limits(-->)_(i->oo) 0.)
$

$"l.i.m."$ --- сходится в среднем (limit in mean).

/ Теорема 1. Связь сходимости по вероятности и в среднем:

$ xi_i limits(-->)^"l.i.m." xi => xi_i limits(-->)^P xi $

*Доказательство.* Воспользуемся неравенством Чебышёва:

$ forall epsilon > 0 space P{|xi - M xi| < epsilon} >= M(xi - M xi)^2 / epsilon^2, $

а точнее, его частный случай:

$ P{xi > epsilon} <= (M g(xi)) / g(epsilon). $

Получим:

$ forall epsilon > 0 space P{|xi_n - xi| < epsilon} >= 1 - ((M(xi - M xi)^2) limits(-->)^"l.i.m."0) / epsilon^2 >= 1 space qed$

/ Теорема 1. Связь сходимости по вероятности и сходимости по распределению:

$ xi_i limits(-->)^"p" xi => xi_i limits(-->)^d xi $

*Доказательство.* Требуется доказать, что $F_n (x_0) -> F(x_0)$, где $x_0$ --- точка непрерывности функции
