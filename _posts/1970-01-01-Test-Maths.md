---
layout: post
title: "Test post: Maths, Equations and MathJax integration"
subtitle: "Testing MathJax integration. Visual examples of inline and block equations; edge testing different kinds of equations."
permalink: /tests/math/
category: Tests
tags: [tutorial, jekyll, markdown, docs, test, design test, edge case, test, MathJax, Maths, equations]
---



# Frobenius' companion

The roots of an $$m^{\text{th}}$$ degree monic polynomial, of the form $$x^m + c_{m-1} x^{m-1} + \cdots + c_1 x + c_0$$, are given by the eigenvalues of the "Frobenius companion matrix" [1]

$$
\begin{equation}
\begin{bmatrix}
    0 & 0 & \dots & 0 & -c_{0} \\
    1 & 0 & \dots & 0 & -c_{1} \\
    0 & 1 & \dots & 0 & -c_{2} \\
    \vdots  & \vdots  & \ddots  & \vdots  & \vdots \\
    0 & 0 & \dots & 1 & -c_{m-1}
\end{bmatrix} \, .
\end{equation}
$$



# The second virial coefficient a bounded Mie potential

A bounded Mie potential is a continuous analog of the (discontinuous)
penetrable hard-sphere/top-hat potential

$$
\begin{equation}
	\phi(r) =
	\begin{cases}
  		\epsilon_r & 0 < r < \sigma \\[2ex]
		- \epsilon_a & \sigma < r < \sigma + \Delta \\[2ex]
    	0 & r > \sigma + \Delta \\
	\end{cases}
	\, .
\end{equation}
$$

For a bounded Mie potential of the form

$$
\begin{equation}
	\phi(r) =
	\lambda
	\left[
	\left(\frac{1}{a^2 + r^2} \right)^{m/2} -
	\left(\frac{1}{a^2 + r^2} \right)^{n/2}
	\right]
	\, ,
\end{equation}
$$

the second virial coefficient can be shown to be [2]

$$
\begin{equation}
	b_2(T)
	\simeq
	- 2 \pi
	\left\{ - \frac{\left( 1 - a^2 \right)^{3/2}}{3}
	+
	\sum_{k=1}^{\infty}
	\frac{\left( 1 - a^2 \right)^{(3 - k n)/2}}{k! (k n - 3)  \alpha^{k/2}} \,
	H_k \left( \frac{1}{2\sqrt{\alpha}} \right) \,
	_2F_1
	\left(
	\frac{k n}{2},
	\frac{k n - 3}{2};
	\frac{k n - 1}{2};
	\frac{a^2}{a^2 - 1}
	\right)
	\right\}
	\, ,
\end{equation}
$$

in the $$r \rightarrow 0$$ limit, where $$H_k(s)$$ is the ordinary
Hermite polynomial and $$_2F_1(a,b;c;z)$$ the hypergeometric function.

---

Interestingly,

$$
\begin{equation}
\begin{split}
	\sum_{k=1}^{\infty} \frac{\Omega^k}{k!} \left(x^{n} - x^{2n} \right)^k
	&= \left[\frac{1}{1!}\Omega^1\right]x^{n}
	\\&+ \left[\frac{1}{2!}\Omega^2-\frac{1}{1!}\Omega^1\right]x^{2n}
	\\&+ \left[\frac{1}{3!}\Omega^3-\frac{2}{2!}\Omega^2\right]x^{3n}
	\\&+ \left[\frac{1}{4!}\Omega^4-\frac{3}{3!}\Omega^3+\frac{1}{2!}\Omega^2\right]x^{4n}
	\\&+ \left[\frac{1}{5!}\Omega^5-\frac{4}{4!}\Omega^4+\frac{3}{3!}\Omega^3\right]x^{5n}
	\\&+ \left[\frac{1}{6!}\Omega^6-\frac{5}{5!}\Omega^5+\frac{6}{4!} \Omega^4-\frac{1}{3!}\Omega^3\right]x^{6n}
	\\&+ \left[\frac{1}{7!}\Omega^7-\frac{6}{6!}\Omega^6+\frac{10}{5!}\Omega^5-\frac{4}{4!}\Omega^4\right]x^{7n}
	\\&+ \left[\frac{1}{8!}\Omega^8-\frac{7}{7!}\Omega^7+\frac{15}{6!}\Omega^6-\frac{10}{5!}\Omega^5+\frac{1}{4!}\Omega^4\right]x^{8n}
	\\&+ ~ \cdots
	\\&= \sum_{k=1}^{\infty} S_{k}(\Omega) x^{kn}
	\, ,
\end{split}
\end{equation}
$$

where

$$
\begin{equation}
\begin{split}
	S_{k}(\Omega)
	&=
	\begin{cases}
		\sum_{j=k/2}^{k} \frac{(-1)^j ~ \Omega^j}{j!} \binom{j}{k-j}  & \text{if $k$ is even} \\[2ex]
		\sum_{j=(k+1)/2}^{k} \frac{(-1)^{j+1} ~ \Omega^j}{j!} \binom{j}{k-j} & \text{if $k$ is odd} \\
	\end{cases}
    \\&= H_k\left(\sqrt{\Omega/4}\right) \frac{\Omega^{k/2}}{k!} ~.
\end{split}
\end{equation}
$$



# References

1. H. Fatoorehchi and H. Abolghasemi, Journal of the Egyptian Mathematical Society, **22**(3):524 – 528 (2014); [https://doi.org/10.1016/j.joems.2013.12.018](https://doi.org/10.1016/j.joems.2013.12.018)
1. D. M. Heyes and T. Pereira de Vasconcelos, The Journal of Chemical Physics **147**, 214504 (2017); [https://doi.org/10.1063/1.5006035](https://doi.org/10.1063/1.5006035)