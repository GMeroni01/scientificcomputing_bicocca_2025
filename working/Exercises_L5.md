### Lecture 5

#### Exercise 2

Q2: Integrate the expression f(x) = sin(x) $e^{-x}$, and then take its derivative.

```wl
In[]:= f[x_] := Sin[x] Exp[-x]; 
  
 F[x_] = Integrate[f[x], x]; 
  
 Fp[x_] = Simplify[D[F[x], x]]; 
  
 Print["Function: f(x) = ", f[x]] 
  
 Print["Primitive function: F(x) = ", F[x]] 
  
 Print["Derivative of the primitive: F'(x) = ", Fp[x]]
```

![1v119idr1mhcl](img/1v119idr1mhcl.png)

![1o5j9g35q7el0](img/1o5j9g35q7el0.png)

![1s892b85ob5nc](img/1s892b85ob5nc.png)

#### Exercise 3

Q3: Solve the equation  x ln(x) - 3 x + 10 = 6, both symbolically and numerically.

```wl
In[]:= eq = x Log[x] - 3 x + 10 == 6; 
  
 Print["Equation: ", eq] 
   
  (*Numeric solution*)
 xNum = Sort[x /. NSolve[eq, x, Reals]]; 
  
 Print["Numeric solutions = ", xNum] 
   
  (*Simbolic solution*)
 sym = Reduce[eq, x, Reals]; 
  
 Print["Symbolic solution: ", sym] 
   
  (*Numeric values of the simbolic solutions*)
 xSym = Cases[sym, x == val_ :> val, Infinity]; 
  
 xSymNum = Sort[N[xSym]]; 
  
 Print["Numeric values of symbolic solutions = ", xSymNum] 
   
  (*Comparison of results*)
 Print["Simbolic and numeric solution matching: ", Sort[xSymNum] === Sort[xNum]]
```

![048aj2495v3g9](img/048aj2495v3g9.png)

![0ag2awgsbcqqv](img/0ag2awgsbcqqv.png)

![08924jjzs6shv](img/08924jjzs6shv.png)

![0e03c2wv1gbe3](img/0e03c2wv1gbe3.png)

![14ssaoq4n3jlc](img/14ssaoq4n3jlc.png)