### A Pluto.jl notebook ###
# v0.19.0

using Markdown
using InteractiveUtils

# ╔═╡ bfcd47ae-fce4-49e9-812c-7f69df8d22c4
import Pkg

# ╔═╡ 786d2f3b-4546-4e25-9893-0155239e9a98
using Markdown

# ╔═╡ 0e2d9f4e-7dc2-4942-988a-8dc93134b2e6
using LinearAlgebra

# ╔═╡ 44b5ddae-218a-4f8c-9aba-59c15cae75e0
using ChangePrecision

# ╔═╡ c7021623-bac6-4aee-9796-545b015cde30
using Readables

# ╔═╡ 3484778a-7c54-4942-a06e-0815394233d8
using ArbNumerics

# ╔═╡ 147ebec3-883c-4973-a1a0-fb37965c9fe1
md"""**Exercices and Coding - Higham**"""

# ╔═╡ 86157751-5ad7-4e7f-916e-6a4fcbbb8202


# ╔═╡ 8dc7096e-993e-4d9a-8aeb-c1f5ed6b59d8
md"Exercice 2.1"

# ╔═╡ 5806fd0d-3565-4ad8-8390-957d1fe3f8a9
md"The range of floating point numbers : $1 \leq m_{sub} \leq \beta^{t-1} \leq m_{normal} \leq \beta^t -1$"

# ╔═╡ 09e67f70-d191-4fbf-8bc9-397caa5d04ac
md"Subnormals : $e=e_{min}, m_{sub} : (\beta ^{t-1}-1)$
Here, there are 3 POSITIVE subnormals"

# ╔═╡ cc5f6ccf-dc93-45db-adbb-1caa845767b7
md"POSITIVE Normals : $(\beta^t-1-\beta^{t-1}+1)(e_{max}-e_{min}+1) +1$ (for the $0$)

There are 20 subnormals"

# ╔═╡ add47d72-b5b7-4796-ac07-dd62a2ebfbb8

β,t,emin,emax=2.0,3.0,-1.0,3.0


# ╔═╡ 16434cb6-363a-4695-8903-a283c4167c5e
begin
	SUB=[]
	NORM=[]
end

# ╔═╡ b74284da-0655-4860-ae43-bed45c7db9b0

for m in 1:(β^(t-1)-1)
	push!(SUB,m*β^(emin-t))
end

# ╔═╡ 708a479a-a7be-496b-ad00-9938e4075bd2
for e in emin:emax
	for m in β^(t-1):β^t-1
		push!(NORM,m*β^(e-t))
	end
end

# ╔═╡ 8cd03276-0558-42e2-b7e4-3899634015a9
SUB

# ╔═╡ 0b7343a9-7658-4eb8-9d79-049643e0656a
NORM

# ╔═╡ 2c31f338-7aa4-4b85-9229-e1f6a1862172


# ╔═╡ d850f6d7-334b-42cf-be6f-d6a4b010b522
md"Exercice 2.2"

# ╔═╡ 4658168a-9aec-4658-92f3-ca8cb05e1d51
md"See proof on paper"

# ╔═╡ 4b5e466c-a8ee-4e9e-88eb-9ece780ca06d
md"Exercice 2.4 : done on paper"

# ╔═╡ dc2652af-251f-4b65-adb1-51ff9a4acd43
md"Exercice 2.5"

# ╔═╡ 6d372346-08c2-4ae4-9789-dc5757f29d54
begin
	n=100
	Sn=0
	for i in 1:n
		Sn+=2.0^(-4i)+2.0^(-4i-1)
	end
end

# ╔═╡ 7582c9a5-f712-436c-a4c6-b99764f4ce67
Sn

# ╔═╡ 8c51345e-3e13-4055-8785-d0fe140eb666
md"Exercice 2.6"

# ╔═╡ daab9208-fdbb-43c3-9a35-f43038fdd3dc
begin
	println("M=2^53")
	println("m=2^24")
	
end

# ╔═╡ 8764c25b-5f82-4ce3-afd1-d9d08f709b57
md"Exercice 2.7"

# ╔═╡ 473c55b0-5e24-4efb-9795-208a0e5678b5
begin
	a=2.12345678987654321012365478987456355555555544444444444444212365478998745248
	2a==a+a
end

# ╔═╡ a2caf82f-2b50-41fb-8800-891eb57d7408
begin
	b=2.1234567892187654321012365478987456355555555544444444444444212365478998745248
	0.5b==b/2
end

# ╔═╡ d8137e01-ed7a-4495-98c3-d2499acfec67
md"Exercice 2.10"

# ╔═╡ 3f264be2-b5e8-4d12-8973-7e78c252bcf4
begin
	c=1/3
	c*3
end

# ╔═╡ 20a4f2dd-fb8d-4f7d-aa8e-41badf4d4d46
1/3*3

# ╔═╡ 10fb3477-494c-4295-8680-79c4587a009b
A=[2^n for n in 1:1000]

# ╔═╡ 9c2792ff-1ebf-4bc5-bd5f-77be63328531
B=[3^n for n in 1:1000]

# ╔═╡ 59598e55-1d6a-46c8-8a3b-2340506fc1ff
C=[factorial(n) for n in 1:20]

# ╔═╡ 4c7aa237-607c-4cb1-bda7-8ccb609a7b5d
begin
	r=rand(6)
	D=()
	for i in 1:3
		for j in 1:3
			D(i,j)=r(i)
			D(j,i)=r(i)
		end
	end
	D
end

# ╔═╡ a526ed01-1339-46ce-99c8-d8f1b623d6f3
E=[1 2 3;
   2 2 4;
   3 4 5]

# ╔═╡ d938c97a-cbe2-4f17-bcc4-939e53cdfd52
eigvals(E)

# ╔═╡ c48e28e4-c07a-491a-bdb7-79ffa16fa39e
md"Exercice 2.14"

# ╔═╡ 29185555-69d1-4507-b5a3-0f0b7d03f24e
3(4/3 − 1) − 1

# ╔═╡ a37a611e-1059-487b-95d8-92929783c926
md"**Tests of the theorems**"

# ╔═╡ aa908258-8857-47f8-a02a-223ebaebbc25
BigFloat(0.1)

# ╔═╡ 4b3b5aed-81aa-4209-acf6-56e620fc6f77
eps(BigFloat)

# ╔═╡ 17954bfc-d837-4fee-bff6-46e06fd3f2e2
methods(BigFloat)

# ╔═╡ 2bdc1e4b-3567-401e-911a-d130afec763e
eps(BigFloat)

# ╔═╡ d2a66af3-69f3-44d6-9e00-df49621e48cd
begin
	#Lemma 2.1
	T=range(1,10,10000)
	List1=Float64[]
	List2=Float64[]
	for t in T
		space=abs(nextfloat(t)-t)
		theorem1=eps()*t/β
		theorem2=eps()*t
		push!(List1,space-theorem1)
		push!(List2, theorem2-space)
	end
end
# On remarque que List1 et List2 ne comportent que des valeurs positives. Ainsi, l'equation : theorem1<space<theorem2 est toujours verifiee donc l'ecart est au moins theorem1 et au plus theorem2

# ╔═╡ 48c622fe-7668-4856-99d5-8835c3abc96f
u=β^(1-53)/2

# ╔═╡ 94345a55-9af0-4d26-8e02-3c7745d5c1aa
begin
	#Theorem 2.2
	N=1000000
	T2=range(-100.0,100.0,N)
	List=BigFloat[]
	for t in T2
		push!(List, abs(BigFloat(t))*(1+u)-abs(t))
	end
	List
end

# ╔═╡ d187e660-e611-4378-a56c-99beab9a1d04
List

# ╔═╡ 65ada341-4656-4b4e-a92d-c77876cb484b
List==zeros(1000000)
# Why zeros ? Should be very small numbers but not 0 ... 

# ╔═╡ 927f6ddb-7a23-4f64-bb13-3bcebd7f11da
#3.5
begin
	bits=53
	length=10
	X=rand(BigFloat,length)
	Y=rand(BigFloat,length)
	X64,Y64=Float64[],Float64[]
	γ1=length*u/(1-length*u)
	n2=floor(log2(length)+1)
	γ2=n2*u/(1-n2*u)
	for i=1:length
		push!(X64,ArbFloat(X[i],digits=bits)) # Forces X[i] to be of type Float64
		push!(Y64,ArbFloat(Y[i],digits=bits))
	end

	R1=abs(dot(X,Y)-dot(X64,Y64))-γ1*dot(X,Y)
	R2=abs(dot(X,Y)-dot(X64,Y64))-γ2*dot(X,Y)

	#Le resultat est toujours negatif donc le theoreme est verifie 
end

# ╔═╡ 79a39e0f-42dc-47d3-a0e8-618186a067b2
length(SUB)

# ╔═╡ 2a39d6e3-2193-4853-a2bb-27e046fcc8b0
length(NORM)

# ╔═╡ ce86cc71-b672-497e-8522-dc37c0b4c558
R1

# ╔═╡ 59ce7d31-59f2-4ce3-afe3-237222d87787
R2

# ╔═╡ 492c17c0-eb69-45bc-a81e-584fa531fb4a
#3.13
begin
	Xm=rand(BigFloat,length,length)
	Ym=rand(BigFloat,length,length)
	Xm64,Ym64=zeros(length,length),zeros(length,length)
	for i=1:length
		for j=1:length
		Xm64[i,j]=convert(Float64,Xm[i,j]) # Forces X[i] to be of type Float64
		Ym64[i,j]=convert(Float64,Ym[i,j])
		end
	end
	R3=norm(Xm*Ym-Xm64*Ym64)-γ1*norm(X)*norm(Y)
end
# Same here, the result is negative so the result is prooved. 

# ╔═╡ 94d8f11f-7709-4abd-88a4-452ab627f3c4
# Theorem 2.4 : Ferguson
begin
	y=rand(1:eps():100)
	x=rand(y/2:eps():2y)
	
	# x et y etant positifs, exp(x-y) est toujours plus petite que min(e(x), e(y) par decroissance de exp sur R)
	
	exp(x-y)<=min(exp(x),exp(y))
	xBF,yBF=BigFloat(x), BigFloat(y)

	resBF=xBF-yBF
	res64=x-y
	resBF==res64	
end

# ╔═╡ 6dfd7287-b29b-436b-8915-1a222aa2779d
# Theorem 2.5 : Sterbenz
begin
	y2=rand(1:eps():100)
	x2=rand(y2/2:eps():2y2)

	x2BF,y2BF=BigFloat(0)+x2, BigFloat(0)+y2

	res2BF=x2BF-y2BF
	res2_64=x2-y2
	res2BF==res2_64	
end

# ╔═╡ a948aa0d-52cc-47c9-b5ef-5aa5279ceea3
y2

# ╔═╡ 28500fc3-05cb-4579-b813-4a3ab6ccca6d
y2BF

# ╔═╡ d137c95e-03a8-4f1c-99e0-ca7ae221891b
x2BF

# ╔═╡ 968bc05f-2a04-4482-97e5-2e003ce4ce2b
BigFloat(1):eps(BigFloat):BigFloat(100)

# ╔═╡ 9e3c1b5c-450e-4dbf-8734-ad24a4b3b43b
begin
	dummy = reinterpret(Int64, y2)
	bitstring(dummy)
end

# ╔═╡ 223c3fe2-6270-4a65-a650-1f8e48671b66
aa=56.33410477704777

# ╔═╡ d7e09d42-8e74-41bf-853f-9b47e3b4dfac
AA=BigFloat(aa)

# ╔═╡ b0d32787-32e1-4cdc-a151-c687a59d40d9
typeof(aa)

# ╔═╡ b12c26f3-5bc7-49e1-8034-ccbf31939e24
# Theorem 2.5 : Sterbenz
begin
	y3=Float32(rand(1:eps(Float32):100))
	x3=Float32(rand(y3/2:eps(Float32):2y3))

	x3BF,y3BF=Float64(0)+x3, Float64(0)+y3

	res3BF=x3BF-y3BF
	res3_64=x3-y3
	res3BF==res3_64
	
end

# ╔═╡ 9c608a66-07a8-4bab-af97-43a6e87e8bfd
x3

# ╔═╡ 1bcb7edf-eb29-4d5b-a075-33d89a72105b
begin
	dummy3 = reinterpret(Int32, x3)
	bitstring(dummy3)
end

# ╔═╡ 9285b9db-eeda-4faf-a87b-24e4346a2d44
begin
	dummy4 = reinterpret(Int64, x3BF)
	bitstring(dummy4)
end

# ╔═╡ 172ae28e-e211-43e6-a058-85dda27c3150
#take the bitstring and display the number it represents: code a function

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
ArbNumerics = "7e558dbc-694d-5a72-987c-6f4ebed21442"
ChangePrecision = "3cb15238-376d-56a3-8042-d33272777c9a"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
Markdown = "d6f4376e-aef5-505a-96c1-9c027394607a"
Pkg = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
Readables = "0d4725de-cd7c-5e44-8a85-a48caeef9fa5"

[compat]
ArbNumerics = "~1.2.6"
ChangePrecision = "~1.0.0"
Readables = "~0.3.3"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.ArbNumerics]]
deps = ["Arb_jll", "BinaryProvider", "FLINT_jll", "GMP_jll", "GenericLinearAlgebra", "Libdl", "LinearAlgebra", "MPFR_jll", "Printf", "Random", "Readables", "SpecialFunctions"]
git-tree-sha1 = "a347a64beec2d29e4587d3ff0352308dfb41e2cc"
uuid = "7e558dbc-694d-5a72-987c-6f4ebed21442"
version = "1.2.6"

[[deps.Arb_jll]]
deps = ["Artifacts", "FLINT_jll", "GMP_jll", "JLLWrappers", "Libdl", "MPFR_jll", "Pkg"]
git-tree-sha1 = "9f496547ec8d9e5caba4953984f32020d731dafb"
uuid = "d9960996-1013-53c9-9ba4-74a4155039c3"
version = "200.2200.0+0"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.BinaryProvider]]
deps = ["Libdl", "Logging", "SHA"]
git-tree-sha1 = "ecdec412a9abc8db54c0efc5548c64dfce072058"
uuid = "b99e7846-7c00-51b0-8f62-c81ae34c0232"
version = "0.5.10"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "9950387274246d08af38f6eef8cb5480862a435f"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.14.0"

[[deps.ChangePrecision]]
deps = ["LinearAlgebra", "Random", "Statistics", "Test"]
git-tree-sha1 = "34b5f8c65ae773d3d3baa6c11833252edd15f476"
uuid = "3cb15238-376d-56a3-8042-d33272777c9a"
version = "1.0.0"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "bf98fa45a0a4cee295de98d4c1462be26345b9a1"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.2"

[[deps.Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "b153278a25dd42c65abbf4e62344f9d22e59191b"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.43.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "b19534d1895d702889b219c382a6e18010797f0b"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.8.6"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FLINT_jll]]
deps = ["Artifacts", "GMP_jll", "JLLWrappers", "Libdl", "MPFR_jll", "OpenBLAS32_jll", "Pkg"]
git-tree-sha1 = "5c7f81ad197da216028a8e5793231acb55307ea2"
uuid = "e134572f-a0d5-539d-bddf-3cad8db41a82"
version = "200.800.401+1"

[[deps.GMP_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "781609d7-10c4-51f6-84f2-b8444358ff6d"

[[deps.GenericLinearAlgebra]]
deps = ["LinearAlgebra", "Printf", "Random", "libblastrampoline_jll"]
git-tree-sha1 = "67bf18c8c2548e4a61ed918dfb567e65997e0f00"
uuid = "14197337-ba66-59df-a3e3-ca00e7dcff7a"
version = "0.3.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "91b5dcf362c5add98049e6c29ee756910b03051d"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.3"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "a970d55c2ad8084ca317a4658ba6ce99b7523571"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.12"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MPFR_jll]]
deps = ["Artifacts", "GMP_jll", "Libdl"]
uuid = "3a97d323-0669-5f0c-9066-3539efd106a3"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS32_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c6c2ed4b7acd2137b878eb96c68e63b76199d0f"
uuid = "656ef2d0-ae68-5445-9ca0-591084a874a2"
version = "0.3.17+0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Readables]]
deps = ["Test"]
git-tree-sha1 = "9dde360267e7f5e0c292bbe14b7d034f7e617031"
uuid = "0d4725de-cd7c-5e44-8a85-a48caeef9fa5"
version = "0.3.3"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "5ba658aeecaaf96923dce0da9e703bd1fe7666f9"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.4"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─147ebec3-883c-4973-a1a0-fb37965c9fe1
# ╟─86157751-5ad7-4e7f-916e-6a4fcbbb8202
# ╟─bfcd47ae-fce4-49e9-812c-7f69df8d22c4
# ╠═786d2f3b-4546-4e25-9893-0155239e9a98
# ╠═0e2d9f4e-7dc2-4942-988a-8dc93134b2e6
# ╠═44b5ddae-218a-4f8c-9aba-59c15cae75e0
# ╠═c7021623-bac6-4aee-9796-545b015cde30
# ╠═3484778a-7c54-4942-a06e-0815394233d8
# ╟─8dc7096e-993e-4d9a-8aeb-c1f5ed6b59d8
# ╟─5806fd0d-3565-4ad8-8390-957d1fe3f8a9
# ╟─09e67f70-d191-4fbf-8bc9-397caa5d04ac
# ╟─cc5f6ccf-dc93-45db-adbb-1caa845767b7
# ╠═add47d72-b5b7-4796-ac07-dd62a2ebfbb8
# ╟─16434cb6-363a-4695-8903-a283c4167c5e
# ╠═b74284da-0655-4860-ae43-bed45c7db9b0
# ╠═708a479a-a7be-496b-ad00-9938e4075bd2
# ╠═8cd03276-0558-42e2-b7e4-3899634015a9
# ╠═79a39e0f-42dc-47d3-a0e8-618186a067b2
# ╠═0b7343a9-7658-4eb8-9d79-049643e0656a
# ╠═2a39d6e3-2193-4853-a2bb-27e046fcc8b0
# ╠═2c31f338-7aa4-4b85-9229-e1f6a1862172
# ╟─d850f6d7-334b-42cf-be6f-d6a4b010b522
# ╟─4658168a-9aec-4658-92f3-ca8cb05e1d51
# ╟─4b5e466c-a8ee-4e9e-88eb-9ece780ca06d
# ╟─dc2652af-251f-4b65-adb1-51ff9a4acd43
# ╠═6d372346-08c2-4ae4-9789-dc5757f29d54
# ╠═7582c9a5-f712-436c-a4c6-b99764f4ce67
# ╟─8c51345e-3e13-4055-8785-d0fe140eb666
# ╠═daab9208-fdbb-43c3-9a35-f43038fdd3dc
# ╟─8764c25b-5f82-4ce3-afd1-d9d08f709b57
# ╠═473c55b0-5e24-4efb-9795-208a0e5678b5
# ╠═a2caf82f-2b50-41fb-8800-891eb57d7408
# ╟─d8137e01-ed7a-4495-98c3-d2499acfec67
# ╠═3f264be2-b5e8-4d12-8973-7e78c252bcf4
# ╠═20a4f2dd-fb8d-4f7d-aa8e-41badf4d4d46
# ╠═10fb3477-494c-4295-8680-79c4587a009b
# ╠═9c2792ff-1ebf-4bc5-bd5f-77be63328531
# ╠═59598e55-1d6a-46c8-8a3b-2340506fc1ff
# ╠═4c7aa237-607c-4cb1-bda7-8ccb609a7b5d
# ╠═a526ed01-1339-46ce-99c8-d8f1b623d6f3
# ╠═d938c97a-cbe2-4f17-bcc4-939e53cdfd52
# ╟─c48e28e4-c07a-491a-bdb7-79ffa16fa39e
# ╠═29185555-69d1-4507-b5a3-0f0b7d03f24e
# ╟─a37a611e-1059-487b-95d8-92929783c926
# ╠═aa908258-8857-47f8-a02a-223ebaebbc25
# ╠═4b3b5aed-81aa-4209-acf6-56e620fc6f77
# ╠═17954bfc-d837-4fee-bff6-46e06fd3f2e2
# ╠═2bdc1e4b-3567-401e-911a-d130afec763e
# ╠═d2a66af3-69f3-44d6-9e00-df49621e48cd
# ╠═48c622fe-7668-4856-99d5-8835c3abc96f
# ╠═94345a55-9af0-4d26-8e02-3c7745d5c1aa
# ╠═d187e660-e611-4378-a56c-99beab9a1d04
# ╠═65ada341-4656-4b4e-a92d-c77876cb484b
# ╠═927f6ddb-7a23-4f64-bb13-3bcebd7f11da
# ╠═ce86cc71-b672-497e-8522-dc37c0b4c558
# ╠═59ce7d31-59f2-4ce3-afe3-237222d87787
# ╠═492c17c0-eb69-45bc-a81e-584fa531fb4a
# ╠═94d8f11f-7709-4abd-88a4-452ab627f3c4
# ╠═6dfd7287-b29b-436b-8915-1a222aa2779d
# ╠═a948aa0d-52cc-47c9-b5ef-5aa5279ceea3
# ╠═28500fc3-05cb-4579-b813-4a3ab6ccca6d
# ╠═d137c95e-03a8-4f1c-99e0-ca7ae221891b
# ╠═968bc05f-2a04-4482-97e5-2e003ce4ce2b
# ╠═9e3c1b5c-450e-4dbf-8734-ad24a4b3b43b
# ╠═223c3fe2-6270-4a65-a650-1f8e48671b66
# ╠═d7e09d42-8e74-41bf-853f-9b47e3b4dfac
# ╠═b0d32787-32e1-4cdc-a151-c687a59d40d9
# ╠═b12c26f3-5bc7-49e1-8034-ccbf31939e24
# ╠═9c608a66-07a8-4bab-af97-43a6e87e8bfd
# ╠═1bcb7edf-eb29-4d5b-a075-33d89a72105b
# ╠═9285b9db-eeda-4faf-a87b-24e4346a2d44
# ╠═172ae28e-e211-43e6-a058-85dda27c3150
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
