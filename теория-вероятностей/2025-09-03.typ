= 3 сентября 2025

== Условные распределения.

Рассмотрим $(Omega, cal(F), PP)$, где: $ & Omega - "множество элементарных исходов эксперимента", \
& cal(A) subset Omega - "случайное событие", \
& cal(F) - sigma"-алгебра событий такая, что:" \
& cases(
    delim: "{",
    Omega in cal(F),
    cal(A) in cal(F)
  ) space => space cases(
    delim: "{",
    overline(cal(A)) in cal(F),
    {cal(A)_i}_(i=1)^oo in cal(F)
  ) space => space limits(union.big)_(i=1)^oo cal(A)_i in cal(F). $

$
  P: cal(F) |-> [0;1] space <=> space P(cal(A)) - "вероятность события" cal(A).
$

Свойства вероятности:

+ $P(cal(A)) >= 0 space forall cal(A) in cal(F)$;
+ $P(Omega) = 1$;
+ $P(limits(union.big.sq)_(i = 1)^oo cal(A)_i) = limits(sum)_(i = 1)^oo P(cal(A)_i)$.

/ Случайная величина $xi$: --- это отображение $xi: Omega |-> RR$, такая что $forall x in RR space {omega: space xi(omega) < x} in cal(F)$. $space xi^(-1)(b) in cal(F); space b in (-oo; x)$.

/ Функция распределения вероятностей случайной величины $xi$: $F_xi (x) = P{omega: xi(omega) < x}$.

Случайные величины бывают двух видов: *дискретные* и *непрерывные*.

*Дискретные:* ${x_1, x_2, ..., x_n, ...}, space p_i = P{xi = x_i}; space p_i > 0, space limits(sum)_(i=1)^oo p_i = 1$.

*Абсолютно непрерывные:* $xi in RR space f(x)$ --- функция плотности распределения, где $F'(x) limits(=)^("п. в.") f(x)$.

Далее мы начнём говорить про многомерные распределения.

/ Случайный вектор: --- это вектор $overline(xi) = (xi_1, xi_2, ..., xi_n)$, где $xi_i in (Omega_i)$ --- случайные величины. $overline(xi)$ задан в $(Omega, cal(F), PP): space Omega = Omega_1 times Omega_2 times ... times Omega_n$, где $cal(F)$ --- $sigma$-алгебра, $PP$ --- вероятностная мера $P(A); space A in Omega$.

Рассмотрим вектор $(xi, eta)$.

/ Функция распределения: $
    F_(xi eta) (x, y) = P{omega: & space xi(omega) < x; \
                                 & space eta(omega) < y}.
  $

На плоскости она будет задавать открытую четверть.

*Свойства:*
+ $forall x, y in RR space 0 lt.eq.slant F_(xi, eta)(x, y) lt.eq.slant 1$;

+ $(x_0, y_0) in RR space => space & F_(xi, eta)(x_0, y) - "неубывающая и непрерывная слева по "y \ & F_(xi, eta)(x_, y_0) - "неубывающая и непрерывная слева по "x";"$

+ $limits(lim)_(x->+oo) F_(xi eta)(x, y) = F_eta (y),\ limits(lim)_(y->+oo) F_(xi eta)(x, y) = F_xi (y), \ limits(lim)_(x->+oo\ y->+oo) F_(xi eta)(x, y) = 1, \ limits(lim)_(x->-oo) F_(xi eta)(x, y) = limits(lim)_(y->-oo) F_(xi eta)(x, y) = limits(lim)_(x->-oo\ y->-oo) F_(xi eta)(x, y) = 0$.

/ Дискретный случайный вектор $(xi, eta)$: --- это случайный вектор, такой что $xi, eta$ --- дискретные случайные величины.

Случайныф вектор $xi, eta$ принимает значения $(x_i, y_i)$ с вероятностями $p_(i j) = P{xi = x_i, space eta = y_j}, space p_(i j) > 0, space limits(sum)_(i = 1)^oo limits(sum)_(j = 1)^oo p_(i j) = 1 $.

*Частные распределения* имеют вид:

$ p_i = P{xi = x_i} = limits(sum)_(j = 1)^oo p_(i j);\ p_j = P{eta = y_j} = limits(sum)_(i = 1)^oo p_(i j). $

Из частных распределений *нельзя* вывести общие.

/ Случайные величины $xi$ и $eta$независимые незваисимые: если: $ P{xi < x, space eta < y} = P{xi < x} times P{eta < y}, $

то есть:

$ F_(xi eta) (x, y) = F_(xi) (x) times F_(eta) (y). $

Для дискретных случайных величин:

$ p_(i j) = p_i p_j, $

а для абсолютно непрерывных:

$ f_(xi eta)(x, y) = f_xi (x) f_xi (y). $

/ Абсолютно непрерывный случайный вектор $(xi, eta)$: --- это случайный вектор $(xi, eta)$, такой что:

$ F_(xi eta) (x, y) = limits(integral)_(-oo)^x limits(integral)_(-oo)^y f_(xi eta) (u, v) dif u dif v. $

*Частные распределения* координат имеют вид:

$ f_xi (x) = limits(integral)_(-oo)^oo f_(xi eta) (x, y) dif y, \ f_eta (y) = limits(integral)_(-oo)^oo f_(xi eta) (x, y) dif x. $

/ Теорема.: $ xi, eta "независимы" <=> space f_(xi eta) (x, y) = f_xi (x) f_eta (y)$.

/ Условное распределение.: Пусть $F_(xi eta) (x, y)$ --- функция распределения случайного вектора $ (xi, eta)$, а $F_xi (x)$ --- функция распределения $xi$. Условным распределением $eta$ относительно $xi$ называют функцию:

$ F_(eta | xi) (x, y) = cases(delim: "{", (F_(xi eta) (x, y)) / (F_xi (x))\; space & F_xi (x) > 0\,, 0\; space & F_xi (x) = 0.) $

Для дискретной величины:

$ P{eta = y_i | xi = x_i} = (P{xi = x_i, space eta = y_i})/P{xi = x_i} = P_(i j) / P_i. $

Для абсолютно непрерывной:

$ f_(eta | xi) (x, y) = (f_(xi eta) (x, y)) / (f_xi (x)) $

Условное распределение является случайной величиной.

/ Условное математическое ожидание дискретной величины $eta$ относительно $xi$: --- это случайная величина:

$ M_(eta | xi = x_i) = limits(sum)_(j = 1)^oo y_j P{eta = y_j | xi = x_i}, $

с распределением $P{xi = x_i}$.

/ Условное математическое ожидание абсолютно непрерывной случайной велечины $eta$ относительно $xi$: --- это случайная величина:

$ M_(eta | xi = x_i) = limits(integral)_(-oo)^(oo) y f_(eta | xi) (x, y) dif y, $

с функцией плотности $f_xi (x)$.

Покажем, что $M(M_(eta | xi)) = M_eta$:

$ M(M_(eta | xi)) & = limits(integral)_(-oo)^(oo) M_(eta | xi) f_(xi) (x, y) dif x  = \ & = limits(integral)_(-oo)^(oo) y (limits(integral)_(-oo)^(oo) f_(xi) (x, y) f_(eta | xi) (x, y) dif x) dif y = \ & = limits(integral)_(-oo)^(oo) y (limits(integral)_(-oo)^(oo)f_(xi eta) (x, y) dif x)  dif y = \ & = limits(integral)_(-oo)^(oo) y f_eta (y) dif y = \ & = M_eta. $