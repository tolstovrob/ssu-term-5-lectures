= 10 сентября 2025

== Регрессии

// TODO: дописать

/ Функция регрессии: --- это функция $g(xi) = M_(eta | xi)$

Используется функция регрессии для оценки $overline(eta) = g(xi)$

У нас есть двумерное распределение $(xi, eta)$ и мы предполагаем, что:

$
  exists f(x): space eta = f(xi) "(изм.)"
$

Эту функцию мы и будем искать.

/ Теорема.: Пусть $(xi, eta)$ --- двумерная случайная величина, $xi. eta$ --- зависимые. Наилучшей (МНК) оценкой связи $xi, eta$ является функция регрессии $g(xi) = M_(eta | xi)$:

$
  M(eta-g(xi))^2 = limits(min)_f(x) M(eta - f(xi))^2
$

/ Доказательство\::

#set math.equation(numbering: none)

$
  & M(eta-f(xi))^2 \ & = M(eta - g(xi) + g(xi) - f(xi))^2 \ & = M(eta - g(xi))^2 + M(g(xi) - f(xi))^2 + 2M((eta - g(xi))(g(xi) - f(xi))) \ & = M(eta - g(xi))^2 + M(g(xi) - f(xi))^2 + M(g(xi) - f(xi))(M_(eta | xi) - M g(xi)xi) \ & = M(eta - g(xi))^2 + M(g(xi) - f(xi))^2 + 0 \ & = M(eta - g(xi))^2 + M(g(xi) - f(xi))^2.
$

Каждое из двух слагаемых неотрицательно, а сверх того:

$
  M(eta - g(xi))^2 + M(g(xi) - f(xi))^2 gt.eq.slant M(n-g(xi))^2
$

Приходим к выводу (хз как):

$
  M_(g(xi) | xi) = g(xi) space qed
$

#set math.equation(numbering: "(1)")

=== Детская травма

Был у Нины Юрьевны преподаватель. За часами не следил, выбирал из студентов часовых. "Дурная Нина Юрьевна" (цитата) ходила на фильмы Марвел, а там часовой и она вздрагивала.

Да, я записал это...

== Уравнение линейной регрессии

Пусть $eta = a xi + b = M_(eta | xi)$. Требуется оценить коэффициенты $a$ и $b$ МНК (метод наименьших коэффициентов).

$
  & M(eta - limits(eta)^and) => limits(min)_(a, b)\
  & M(eta - a xi - b)^2 = L(a, b) \
  & (diff L(a,b)) / (diff a) \ & = diff / (diff a) M(eta - a xi - b)^2 \ & = (-2) M (eta - a xi - b) xi \ & = (-2) M(xi eta - a xi^2 - b xi) [M_(xi eta) - a M xi^2 + b M_xi] \ & = 0
$

С другой стороны:

$
  & (diff L(a, b)) / (diff b) \ & = diff / (diff b) M(eta - a xi - b)^2 \ & = (-2) (M eta - a M xi - b) = 0
$

Составляем систему:

$
  & cases(delim: "{", M eta - a M xi - b = 0\,, M xi eta - a M xi^2 - b M xi\,) space <=> \ & cases(delim: "{", M eta xi - a M xi ^ 2 - (M eta - a M xi) M xi = 0\,, b = M eta - a M xi\,) space <=> \ & cases(delim: "{", a(M xi^2 - (M xi)^2 = M xi eta - M xi M eta)\,, ...\,) <=> \ & cases(delim: "{", a = ("cov"(xi, eta)) / (D xi) (sqrt(D) eta) / sqrt(D eta)\,, ...\,) <=> \ & cases(delim: "{", a = r (sigma eta)/(sigma xi)\,, b = M eta - r (sigma eta) / (sigma xi) M xi.)
$

Осталось лишь доказать, что в этой системе мы достигаем минимум. $qed$
\
Итак, получили уравнение регрессии:

$ eta & = r (sigma eta) / (sigma xi) + M eta - r (sigma eta) / (sigma xi) M xi
  \ & = M eta + r (sigma eta) / (sigma xi) (xi - M xi)
  \ & = eta - M eta
  \ & = r (sigma eta) / (sigma xi) (xi - M xi), space |r| lt.eq.slant 1. $

При этом, $(M xi, M eta)$ будет являться его решением.

== Практика

=== Задача 1

Дано 2мерное распределение $(xi, eta)$:

```
xi\eta| 1 | 2 | 5 |
------|---|---|---|
-1    |0.1|0.2|0.1|
------|---|---|---|
1     |0.4| 0 |0.1|
```

1. Зависимы ли $xi$ и $eta$?

$
  p_(i j) - p_i p_j space forall i, j
$

```
xi | -1|  1|
---|---|---|
 p |0.4|0.6|
```

```
eta   | 1 | 2 | 5 |
------|---|---|---|
q     |0.5|0.2|0.3|
```

$p_(1, 1) = 0.1, p_1 = 0.4, q_1 = 0.5$

Найдём $P{xi = -1, eta = 1}$. $0.1 != 0.4 times 0.5 =>$ зависимы!

2. Построить условное распределение.

${xi = -1} space p_1 = 0.4$

```
eta        | 1 | 2 | 5 |
-----------|---|---|---|
p{eta| -1} |0.5|0.2|0.3|
```

// TODO: Потом взять у кого-нибудь...
