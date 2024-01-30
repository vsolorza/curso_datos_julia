### A Pluto.jl notebook ###
# v0.19.37

using Markdown
using InteractiveUtils

# ╔═╡ 5791d048-cea4-4df9-8069-1c0d385a2698
using Measurements

# ╔═╡ eaa80980-bf1a-11ee-082f-3b5fa9bc9a74
md"""
### Ejercicios sobre Cifras Significativas:
"""

# ╔═╡ c7c930cf-676a-4dfa-b060-82e13558b864
begin
	# Ejercicio 1
	x1=(23.5+6.2-0.1)
	print(x1) # Una cifras significativas decimal
end

# ╔═╡ 478db9d4-5439-4296-a577-309352edfa8a
begin
	# Ejercicio 2
	x2=4.6*2.1/3.8
	print(x2) # Una cifra significativa decimal
end

# ╔═╡ 2e7f403e-172b-4798-bcbf-0ebad703b44b
begin
	# Ejercicio 3
	x3=(8.2+3.5)*2.0/4.6
	print(x3) # Una cifra significativa decimal
end

# ╔═╡ 893fb234-cd71-40f9-a9cf-7d3af06a0362
begin
	# Ejercicio 4
	x4=375/1000
	print(x4)
end

# ╔═╡ b202089c-1a01-4c85-ac3c-2ccb41af1d8c
begin
	# Ejercicio 5
	x5=5.7^3.2
	print(x5) # Una cifra significativa decimal
end

# ╔═╡ bc29bd8d-621d-4c55-a8b0-b87999cce780
md"""
### Ejercicios sobre Propagación de Errores:
"""

# ╔═╡ 50bf6a65-90db-4cb8-a7c9-49b5ddb52ffa
begin
	# Ejercicio 6
	a=(3.0 ± 0.2)
	b=(2.5 ± 0.1)
	c=a*b
	print(c) # Una cifra significativa decimal 
end

# ╔═╡ fd4d13c1-5b6a-4b4b-ab01-8c43bedfd812
begin
	# Ejercicio 7
	x=(15.4 ± 0.3)
	y=(8.6 ± 0.2)
	z=x*y
	print(z)
end

# ╔═╡ 934ed1fc-6049-4013-b7c1-6f0f253041c2
begin
	# Ejercicio 8
	P=(20.0 ± 0.5)
	Q=(4.0 ± 0.2)
	R=P
	S=(R/Q)
	print(S) # Una cifra significativa decimal
end

# ╔═╡ 0d721bb4-7e9c-4d19-ad33-f6914da6d698
begin
	# Ejercicio 9
	D=(3.2 ± 0.1)*(5.0 ± 0.2) + (2.0 ± 0.1)
	print(D)  # Una cifra significativa decimal
end

# ╔═╡ 9c90cc86-918f-48c0-ba58-695e7fdea1e8
begin
	# Ejercicio 10
	M₁=14.2; δM₁=0.1
	M₂=14.5; δM₂=0.2
	
	# Calculamos la diferencia absoluta
	ΔM=abs(δM₁-δM₂)
	
	# Incertidumbre de la diferencia absoluta
	ΔΔM=sqrt(δM₁^2 + δM₂^2)

	# Determinar Significancia
	print("Valor de ΔM es: ", ΔM, "; Valor de k*ΔΔM: ", 1.96*ΔΔM)
end

# ╔═╡ 1060efa2-eae4-4ce3-afde-3f6357ab51ca
print("Con un intervalo de confianza de 95%, las diferencias son significativas")

# ╔═╡ 4e68d840-8497-4f59-b8ea-25f5544abcc8
md"""
### Mas Ejercicios sobre Cifras Significativas:
"""

# ╔═╡ a3d39171-b1b7-4801-9eea-75e9852aa92e
begin 
	# Ejercicio 11
	x11=(3.5+1.2)*4.7
	print(x11) # Una cifra significativa decimal
end

# ╔═╡ 14dd062d-9157-4474-aa05-a8b759f7a39e
begin 
	# Ejercicio 12
	x12=(9.0/(2.3-0.1))
	print(x12) # Una cifra significativa decimal
end

# ╔═╡ 5d0f8e11-5133-4cc5-8446-20cf36927aba
begin
	# Ejerc. 13
	x13=560.0 + 12.3
	print(x13, " m")
end

# ╔═╡ e2a69313-96d7-4af1-97a8-c8e6ea32c038
begin 
	# Ejerc. 14
	x14=(5.7*2.1)^3.4
	print(x14) # Una cifra significativa decimal
end

# ╔═╡ a6a66f02-a82b-48ce-a331-050bb32e10aa
begin 
	# Ejerc. 15
	x15= 272.2+32.0
	print(x15, " K")
end

# ╔═╡ d4605171-75cb-46ee-be45-82f7df5cc506
begin
	# Ejerc. 16
	x16= (12.2+0.5+3.1)
	print(x16) # Una cifra significativa decimal
end

# ╔═╡ 757fe7fb-567b-40a4-b983-b730b75a7267
begin
	# Ejerc. 17
	x17= (7*10^4)
	print(x17)
end

# ╔═╡ b0f3e747-9d28-4982-8ccb-d62365617224
begin 
	# Ejerc. 18
	x18= 0.00723
	print(x18, " tiene 3 cifras significativas.")
end

# ╔═╡ 69ef4ae4-5dbd-478f-8659-8373d9257478
begin 
	# Ejerc. 19
	x19=2.345*100
	print(x19) # una cifra significativa decimal
end

# ╔═╡ d977c8b0-1e77-4acc-8617-2d7d8ff4f9ed
begin
	# Ejerc. 20
	x20=(2.0 ± 0.1)^(3.0 ± 0.2)
	print(x20)
end

# ╔═╡ 27985558-7d58-4a3a-abde-abe77d7dc4ef
md""" 
### Ejercicios sobre Errores Relativos 

### Productos
"""

# ╔═╡ 4393d703-87e5-424a-a9f0-7242379c9ce8
begin
	# Ejerc. 21
	A1=3.0; δA1=0.2
	B1=2.5; δB1=0.1
	Er1= sqrt((δA1/A1)^2 + (δB1/B1)^2) 
	print("El error relativo del producto de A y B es ", Er1*100, "%")
	# una cifra significativa decimal
end

# ╔═╡ 519f848e-3ade-4d85-8627-6b42262a3bba
begin
	# Ejerc. 22
	X2=5.0; δX2=0.3
	Y2=2.2; δY2=0.1
	Er2= sqrt((δX2/X2)^2 + 2*(δY2/Y2)^2) 
	print("El error relativo del producto de X y Y² es ", Er2*100, "%")
	# una cifra significativa decimal
end

# ╔═╡ c2dccf95-6226-4e4d-908e-85f0c0b6dca3
begin
	# Ejerc. 23
	P2=4.8; δP2=0.4
	Q2=3.0; δQ2=0.2
	Er3= sqrt(2*(δP2/P2)^2 + (δQ2/Q2)^2) 
	print("El error relativo del producto de P² y Q es ", Er3*100, "%")
	# una cifra significativa decimal
end

# ╔═╡ e1d0abde-27f7-4961-a2d6-ba9fbceb9402
begin
	# Ejerc. 24
	M2=1.5; δM2=0.1
	N2=2.0; δN2=0.3
	O2=3.2; δO2=0.2
	Er4= sqrt((δM2/M2)^2 + (δN2/N2)^2 + (δO2/O2)^2) 
	print("El error relativo del producto de P, Q y O es ", Er4*100, "%")
	# una cifra significativa decimal
end

# ╔═╡ 090eb200-14c5-4ac7-9ee4-bcd0f360f93a
begin
	# Ejerc. 25
	Er5= sqrt((0.5/7.0)^2 + (0.1/2.4)^2) 
	print("El error relativo del producto de (7.0 ± 0.5) por (2.4 ± 0.1) es ", Er5*100, "%")
	# una cifra significativa decimal
end

# ╔═╡ abdbd8ef-53a2-4262-b0b8-17e06c5d93da
md"""
### Cocientes:
"""

# ╔═╡ 68f809cd-8b07-4c65-8fdc-a8ec5feff00f


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
# ╟─eaa80980-bf1a-11ee-082f-3b5fa9bc9a74
# ╠═c7c930cf-676a-4dfa-b060-82e13558b864
# ╠═478db9d4-5439-4296-a577-309352edfa8a
# ╠═2e7f403e-172b-4798-bcbf-0ebad703b44b
# ╠═893fb234-cd71-40f9-a9cf-7d3af06a0362
# ╠═b202089c-1a01-4c85-ac3c-2ccb41af1d8c
# ╟─bc29bd8d-621d-4c55-a8b0-b87999cce780
# ╠═5791d048-cea4-4df9-8069-1c0d385a2698
# ╠═50bf6a65-90db-4cb8-a7c9-49b5ddb52ffa
# ╠═fd4d13c1-5b6a-4b4b-ab01-8c43bedfd812
# ╠═934ed1fc-6049-4013-b7c1-6f0f253041c2
# ╠═0d721bb4-7e9c-4d19-ad33-f6914da6d698
# ╠═9c90cc86-918f-48c0-ba58-695e7fdea1e8
# ╠═1060efa2-eae4-4ce3-afde-3f6357ab51ca
# ╟─4e68d840-8497-4f59-b8ea-25f5544abcc8
# ╠═a3d39171-b1b7-4801-9eea-75e9852aa92e
# ╠═14dd062d-9157-4474-aa05-a8b759f7a39e
# ╠═5d0f8e11-5133-4cc5-8446-20cf36927aba
# ╠═e2a69313-96d7-4af1-97a8-c8e6ea32c038
# ╠═a6a66f02-a82b-48ce-a331-050bb32e10aa
# ╠═d4605171-75cb-46ee-be45-82f7df5cc506
# ╠═757fe7fb-567b-40a4-b983-b730b75a7267
# ╠═b0f3e747-9d28-4982-8ccb-d62365617224
# ╠═69ef4ae4-5dbd-478f-8659-8373d9257478
# ╠═d977c8b0-1e77-4acc-8617-2d7d8ff4f9ed
# ╟─27985558-7d58-4a3a-abde-abe77d7dc4ef
# ╠═4393d703-87e5-424a-a9f0-7242379c9ce8
# ╠═519f848e-3ade-4d85-8627-6b42262a3bba
# ╠═c2dccf95-6226-4e4d-908e-85f0c0b6dca3
# ╠═e1d0abde-27f7-4961-a2d6-ba9fbceb9402
# ╠═090eb200-14c5-4ac7-9ee4-bcd0f360f93a
# ╟─abdbd8ef-53a2-4262-b0b8-17e06c5d93da
# ╠═68f809cd-8b07-4c65-8fdc-a8ec5feff00f
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
