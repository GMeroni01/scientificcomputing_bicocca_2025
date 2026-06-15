(* ::Package:: *)

(* ::Section:: *)
(*Lecture 5*)


(* ::Subsection:: *)
(*Exercise 2*)


(* ::Text:: *)
(*Q2: Integrate the expression f(x) = sin(x) e^-x, and then take its derivative.*)


f[x_]:=Sin[x] Exp[-x];

F[x_]=Integrate[f[x],x];

Fp[x_]=Simplify[D[F[x],x]];

Print["Function: f(x) = ",f[x]]

Print["Primitive function: F(x) = ",F[x]]

Print["Derivative of the primitive: F'(x) = ",Fp[x]]


(* ::Subsection:: *)
(*Exercise 3*)


(* ::Text:: *)
(*Q3: Solve the equation  x ln(x) - 3 x + 10 = 6, both symbolically and numerically.*)


eq=x Log[x]-3 x+10==6;

Print["Equation: ",eq]

(*Numeric solution*)
xNum=Sort[x/. NSolve[eq,x,Reals]];

Print["Numeric solutions = ",xNum]

(*Simbolic solution*)
sym=Reduce[eq,x,Reals];

Print["Symbolic solution: ",sym]

(*Numeric values of the simbolic solutions*)
xSym=Cases[sym,x==val_:>val,Infinity];

xSymNum=Sort[N[xSym]];

Print["Numeric values of symbolic solutions = ",xSymNum]

(*Comparison of results*)
Print["Simbolic and numeric solution matching: ",Sort[xSymNum]===Sort[xNum]]



