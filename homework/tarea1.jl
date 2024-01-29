### A Pluto.jl notebook ###
# v0.19.37

using Markdown
using InteractiveUtils

# ╔═╡ 23f80252-6a49-422b-8814-703889da7b56
using Measurements

# ╔═╡ 10166b16-91dc-4ff1-94b5-37c759c4121b
md"# TAREA 1 CURSO ANÁLISIS DE DATOS"

# ╔═╡ 72a753d8-b6ea-11ee-3203-235468905873
md"""

### Ejercicios sobre Cifras Significativas:

1. **Suma y Resta:**
   Realiza la operación $(23.45 + 6.2 - 0.123)$ con el número adecuado de cifras significativas.

2. **Multiplicación y División:**
   Calcula $(4.56 \times 2.1 / 3.789)$ con el número correcto de cifras significativas.

3. **Operaciones Mixtas:**
   Resuelve la expresión $(8.21 + 3.45) \times 2.0 / 4.567 )$ asegurándote de mantener la precisión adecuada.

4. **Conversión de Unidades:**
   Convierte 375 metros a kilómetros con la cantidad apropiada de cifras significativas.

5. **Potencias:**
   Eleva $(5.67)$ a la potencia $(3.2)$ y expresa el resultado con el número correcto de cifras significativas.

### Ejercicios sobre Propagación de Errores:

6. **Multiplicación de Cantidades con Incertidumbre:**
   Si $( A = 2.5 \pm 0.1 )$ y $( B = 3.0 \pm 0.2 )$, calcula $( C = A \times B )$ con la incertidumbre asociada.

7. **Suma de Cantidades con Incertidumbre:**
   Suma $( X = 15.4 \pm 0.3 )$ y $( Y = 8.6 \pm 0.2 )$ y determina la incertidumbre de $( Z = X + Y )$.

8. **División de Cantidades con Incertidumbre:**
   Si $(P = 20.0 \pm 0.5 )$ y $( Q = 4.0 \pm 0.2 )$, calcula $((R=P)/Q)$ con su respectiva incertidumbre.

9. **Operaciones Combinadas:**
   Si $(D = (3.2 \pm 0.1) \times (5.0 \pm 0.2) + (2.0 \pm 0.3))$, encuentra la incertidumbre asociada a $( D )$.

10. **Comparación de Resultados:**
   Realiza dos mediciones $( M_1 = 14.2 \pm 0.1 )$ y $( M_2 = 14.5 \pm 0.2 )$ y determina si hay una diferencia significativa entre ellas.




"""

# ╔═╡ 87135584-d489-4646-ac82-53e4b471f019
md"""

### Mas Ejercicios sobre Cifras Significativas:

11. Evalúa $(3.45 + 1.2) \times 4.67)$ con el número correcto de cifras significativas.
12. Realiza la operación $(8.96 \div (2.3 - 0.123))$ considerando cifras significativas.
13. Expresa $(560.0 {m} + 12.34 {m} )$ con el número adecuado de cifras significativas.
14. Calcula $(5.67 \times 2.1)^{3.4})$ con la precisión apropiada.
15. Convierte $32.0$°C a Kelvin manteniendo el número correcto de cifras significativas.
16. Realiza la suma $(14.2 + 0.456 + 3.1)$ con el número correcto de cifras significativas.
17. Expresa $(6.789 \times 10^4)$ en notación científica con cifras significativas.
18. Determina cuántas cifras significativas tiene el número $0.00723$.
19. Convierte $2.345$ km a metros con la precisión adecuada.
10. Eleva $( (2.0 \pm 0.1))$ a la potencia $(3.0 \pm 0.2)) $  con el número correcto de cifras significativas.


### Ejercicios sobre Errores Relativos:

### Productos:

21. **Producto Simple:**
   Si $( A = 3.0 \pm 0.2 )$ y $( B = 2.5 \pm 0.1 )$, calcula el producto $( C = A \cdot B )$ y determina su error relativo.

22. **Producto Compuesto:**
   Con $( X = 5.0 \pm 0.3 )$ y 4( Y = 2.2 \pm 0.05 )$, encuentra $( Z = X \cdot Y^2 )$ y su error relativo.

23. **Producto con Potencia:**
   Si $( P = 4.8 \pm 0.4 )$ y  $Q = 3.0 \pm 0.2 )$, evalúa $( R = P^2 \cdot Q )$ y encuentra su error relativo.

24. **Producto de Varias Variables:**
   Dadas $( M = 1.5 \pm 0.1 )$, $(N = 2.0 \pm 0.3)$, y $( O = 3.2 \pm 0.2)$ , calcula $( P = M \cdot N \cdot O )$ y su error relativo.

25. **Producto con Constante:**
   Multiplica $( 7.0 \pm 0.5 )$ por $( 2.4 \pm 0.1 )$ y determina el error relativo del resultado.

### Cocientes:

26. **Cociente Simple:**
   Con $(A = 10.0 \pm 0.5 )$ y $(B = 2.5 \pm 0.1)$, calcula el cociente $( C = A / B)$ y determina su error relativo.

27. **Cociente Compuesto:**
   Evalúa $(X = 8.0 \pm 0.3 )$ dividido por $( Y = 2.2 \pm 0.05 )$ al cuadrado y encuentra su error relativo.

28. **Cociente con Potencia:**
   Si $( P = 6.0 \pm 0.3 )$ y $(Q = 2.5 \pm 0.2)$, determina $( R = \frac{P^2}{Q} )$  y su error relativo.

29. **Cociente de Varias Variables:**
   Dadas $( M = 3.0 \pm 0.2 )$, $( N = 1.5 \pm 0.1 )$, y $( O = 2.0 \pm 0.3 )$, calcula $( P = \frac{M \cdot N}{O} )$ y su error relativo.

30. **Cociente con Constante:**
    Divide $( 5.0 \pm 0.4 )$ por $( 1.2 \pm 0.1 )$ y determina el error relativo del resultado.

31. Si una medida es $( 15.6 \pm 0.4 )$, calcula su error relativo.
32. Determina el error relativo porcentual de una longitud medida como $( 18.2 \pm 0.5 )$ cm.
33. Encuentra el error relativo de una masa medida como $( 25.3 \pm 0.7 )$ g.
34. Calcula el error relativo porcentual de una velocidad medida como $( 30.0 \pm 1.5 )$ m/s.
35. Si el tiempo es $( 10.0 \pm 0.2 )$, determina su error relativo porcentual.

### Ejercicios sobre Propagación de Errores en Funciones de Dos Variables:

36. Dada $( f(x, y) = x^2 + 2y )$, encuentra el error relativo de $( f)$ si $( x = 3.0 \pm 0.1)$ y $( y = 1.5 \pm 0.2)$.
37. Para $( g(a, b) = \sqrt{a^2 + b^2} )$, calcula el error relativo de $( g )$ con $( a = 4.0 \pm 0.3 )$ y $(b = 2.5 \pm 0.1)$.
38. Encuentra el error relativo porcentual de $( h(u, v) = \frac{u}{v} )$ con $( u = 8.0 \pm 0.4 )$ y $( v = 2.0 \pm 0.1 )$.
39. Si $( k( m, n) = m^n )$, determina el error relativo de $k)$ con: 
            $m = 5.0 \pm 0.2$  y   $n = 2.0 \pm 0.1$.

40. Para $( p(x, y) = x \cdot e^y )$, calcula el error relativo de $( p )$ con $( x = 2.5 \pm 0.1 )$ y $( y = 0.8 \pm 0.05 )$.


"""

# ╔═╡ 16020e1f-88c0-40fc-8ad8-673f151e860b
md"""
Una serie de tiempo armónica se puede expresar en función de los coeficientes ${(X_1,X_2)}$  o de la amplitud $A$ y la fase $\theta$ como:

$T(t)= X_1 \sin(ωt) + X_2 \cos(ωt)$ 

$T(t) = A \cos(ωt -θ)$


Calcula el error en la amplitud y la fase en función de las desv estándar y correlación de ${(X_1,X_2)}$ dónde:

```math
\begin{eqnarray}
A=\sqrt{(X_1^2 +X_2^2)} \\
θ=tan^{-1}(\frac{X_2}{X_1})
\end{eqnarray}
```
"""

# ╔═╡ c815fedf-a5f6-4e10-905b-fa7e201be9b2
md"""
Les dan una resma de 500 hojas y una regla graduada un milímetros.
Medir el espesor de una hoja con una precisión del orden ~ $1.0 e{-3}$ milímetros.  
"""

# ╔═╡ 8893a248-0b2a-4a09-9554-3a0c661c05e9
md"""
##### Sifras significativas  
"""

# ╔═╡ f06a89e6-26d8-4614-98ce-a04c7faf2697
begin
	
		x1=23.4 + 2.1 + 0.1
		x2=4.6*2.1/3.8
		x3=375/1000
		x4=5.7^3.2
		print([x1,x2,x3,x4])
end

# ╔═╡ 695744ad-593d-4645-94cf-ee18e07b0fef
md"""
###### Propagacion de errores
"""

# ╔═╡ 7132fcbd-ca7d-4d94-9174-fa0566817640
begin
	a=(3.0 ± 0.2)
	b=(2.5 ± 0.1)
	c=a*b
	print(c)
end

# ╔═╡ 580e4083-085c-4b73-9d3b-1ba67279ab03
begin
	x=(15.4 ± 0.3)
	y=(8.6 ± 0.2)
	z=x*y
	print(z)
end

# ╔═╡ d5c65098-514e-479e-b2fc-ce90ace74f56
begin
	P=(20.0 ± 0.5)
	Q=(4.0 ± 0.2)
	R=P
	S=(R/Q)
	print(S)
end

# ╔═╡ 9a4cc7d6-b777-4b9a-bf84-e75778db2a5a
begin
	D=(3.2 ± 0.1)*(5.0 ± 0.2) + (2.0 ± 0.1)
	print(D) 
end

# ╔═╡ d51ff4a7-ac66-4757-b9e3-a795bc1caed6
begin
	M₁=(14.2 ± 0.1)
	M₂=(14.5 ± 0.2)
end

# ╔═╡ b0cce7f9-8fb1-437b-9f35-27fa62e16987


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Measurements = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"

[compat]
Measurements = "~2.11.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "02e77b1d3c45741082c3658bbbef332a14dae6da"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Measurements]]
deps = ["Calculus", "LinearAlgebra", "Printf", "Requires"]
git-tree-sha1 = "bdcde8ec04ca84aef5b124a17684bf3b302de00e"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.11.0"

    [deps.Measurements.extensions]
    MeasurementsBaseTypeExt = "BaseType"
    MeasurementsJunoExt = "Juno"
    MeasurementsRecipesBaseExt = "RecipesBase"
    MeasurementsSpecialFunctionsExt = "SpecialFunctions"
    MeasurementsUnitfulExt = "Unitful"

    [deps.Measurements.weakdeps]
    BaseType = "7fbed51b-1ef5-4d67-9085-a4a9b26f478c"
    Juno = "e5e0dc1b-0480-54bc-9374-aad01c23163d"
    RecipesBase = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
    SpecialFunctions = "276daf66-3868-5448-9aa4-cd146d93841b"
    Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+2"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"
"""

# ╔═╡ Cell order:
# ╠═10166b16-91dc-4ff1-94b5-37c759c4121b
# ╠═72a753d8-b6ea-11ee-3203-235468905873
# ╟─87135584-d489-4646-ac82-53e4b471f019
# ╟─16020e1f-88c0-40fc-8ad8-673f151e860b
# ╠═c815fedf-a5f6-4e10-905b-fa7e201be9b2
# ╠═23f80252-6a49-422b-8814-703889da7b56
# ╟─8893a248-0b2a-4a09-9554-3a0c661c05e9
# ╠═f06a89e6-26d8-4614-98ce-a04c7faf2697
# ╟─695744ad-593d-4645-94cf-ee18e07b0fef
# ╠═7132fcbd-ca7d-4d94-9174-fa0566817640
# ╠═580e4083-085c-4b73-9d3b-1ba67279ab03
# ╠═d5c65098-514e-479e-b2fc-ce90ace74f56
# ╠═9a4cc7d6-b777-4b9a-bf84-e75778db2a5a
# ╠═d51ff4a7-ac66-4757-b9e3-a795bc1caed6
# ╠═b0cce7f9-8fb1-437b-9f35-27fa62e16987
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
