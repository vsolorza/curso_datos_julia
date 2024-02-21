# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .jl
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.16.1
#   kernelspec:
#     display_name: Julia Curso_datos_Julia 1.10.0
#     language: julia
#     name: julia-curso_datos_julia-1.10
# ---

# ## Pruebas de hipótesis
#
# ### $P(x^* \leq q(\alpha))$, Rechazas H0 donde $q()$ es el cuantil 
#
# ### Usando el criterio "p"
#
# ### $P(x^*)=cdf(x^*)=p$  
#
# ### Si $p \leq \alpha$ Rechazas H0

using Distributions, Random, Statistics, Plots; gr()

# +
Random.seed!(123)

n, N, alpha = 10, 10^7, 0.05
mact = 0.5
dist0, dist1 = Uniform(0,1), Uniform(0,mact)

ts(muestra) = maximum(muestra) - minimum(muestra)

empDistH0 = [ts(rand(dist0,n)) for _ in 1:N]
rejectVal = quantile(empDistH0,alpha)

muestra = rand(dist1,n)
testStat = ts(muestra)
pValue = sum(empDistH0 .<= testStat)/N

if testStat > rejectVal
    print("Didn't reject: ", round(testStat,digits=4))
    print(" > ", round(rejectVal,digits=4))
else
    print("Rechaza: ", round(testStat,digits=4))
    print(" <= ", round(rejectVal,digits=4))
end
println("\np-value = $(round(pValue,digits=4))")

stephist(empDistH0, bins=100, c=:blue, normed=true, label="")
plot!([testStat, testStat], [0,4], c=:red, label="Prueba estadística Observada")
plot!([rejectVal, rejectVal], [0,4], c=:black, ls=:dash,
	label="Valor crítico (frontera) ", legend=:topleft, ylims=(0,4),
    	xlabel = "x", ylabel = "PDF")

# +
#import Pkg; Pkg.add("StatsBase")
#Pkg.add("LaTeXStrings")
#using StatsBase, LaTeXStrings

# +
using StatsBase, LaTeXStrings;

mu0, mu1, sd, tau  = 15, 18, 2, 17.5
dist0, dist1 = Normal(mu0,sd), Normal(mu1,sd)
grid = 5:0.1:25
h0grid, h1grid = tau:0.1:25, 5:0.1:tau

println("Prob de error Tipo I (Rechazo H0 y es verdadera): ", ccdf(dist0,tau))
println("Prob de error Tipo II (Acepto H0 y es falsa): ", cdf(dist1,tau))

plot(grid, pdf.(dist0,grid),
	c=:blue, label="Boyas tipo 15kg")
plot!(h0grid, pdf.(dist0, h0grid), 
	c=:blue, fa=0.2, fillrange=[0 1], label="")
plot!(grid, pdf.(dist1,grid), 
	c=:green, label="Boyas tipo 18kg")
plot!(h1grid, pdf.(dist1, h1grid), 
	c=:green, fa=0.2, fillrange=[0 1], label="")
plot!([tau, 25],[0,0],
	c=:red, lw=3, label="Zona de Rechazo", 
	xlims=(5, 25), ylims=(0,0.25) , legend=:topleft,
    xlabel="x", ylabel="Densidad")
annotate!([(16, 0.02, text(L"\beta")),(18.5, 0.02, text(L"\alpha")),
            (15, 0.21, text(L"H_0")),(18, 0.21, text(L"H_1"))])
# -

# ## Intervalos de confianza para la varianza
#
# ### $P(\chi_{\frac{\alpha}{2},n-1}^2 \leq \frac{(n-1)S^2}{\sigma^2} \leq \chi_{\frac{1-\alpha}{2},n-1}^2)= 1-\alpha$
#
#
# ### $\frac{(n-1)S^2}{\chi_{\frac{1-\alpha}{2},n-1}^2} \leq \sigma^2 \leq \frac{(n-1)S^2}{\chi_{\frac{\alpha}{2},n-1}^2}$
#
# ###  La varianza de la muestra tiene una distribución $\chi^2$
#
# ### $S^2 = \frac{1}{N-1}\sum_{1}^{N} (X_{i} - \bar{X})^2$ 
#
# ### $(n-1)*\frac{S^2}{\sigma^2} \approx \chi^2(n-1)$
#
# ### Si la distribución de $x$ es Normal!
#
# ### Comparar con Distribución Logística parecida a la Normal

# +
mu, sig = 2, 3
eta = sqrt(3)*sig/pi
n, N = 15, 10^6
dNormal   = Normal(mu, sig)
dLogistic = Logistic(mu, eta)
xGrid = -8:0.1:12
varGrid = 0:.1:30

sNormal   = [var(rand(dNormal,n)) for _ in 1:N]
sLogistic = [var(rand(dLogistic,n)) for _ in 1:N]

p1 = plot(xGrid, pdf.(dNormal,xGrid), c=:blue, label="Normal")
p1 = plot!(xGrid, pdf.(dLogistic,xGrid), c=:red, label="Logistic", 
	xlabel="x",ylabel="Density", xlims= (-8,12), ylims=(0,0.16))

p2 = stephist(sNormal, bins=200, c=:blue, normed=true, label="Normal")
p2 = stephist!(sLogistic, bins=200, c=:red, normed=true, label="Logistic", 
	xlabel="Sample Variance", ylabel="Density", xlims=(0,30), ylims=(0,0.14))
p2 = plot!(varGrid,pdf.((sig^2/(n-1))*Chisq(n-1),varGrid),c=:black,label="Χ²(n-1)(σ²/h-1)")

plot(p1, p2, size=(800, 400))
# -

#
# ###  Para mayor demostración de que los siguientes intervalos aplican a distribución Normal
#
# ### $P(\chi_{\frac{\alpha}{2},n-1}^2 \leq \frac{(n-1)S^2}{\sigma^2} \leq \chi_{\frac{1-\alpha}{2},n-1}^2)= 1-\alpha$
#
#
# ### $\frac{(n-1)S^2}{\chi_{\frac{1-\alpha}{2},n-1}^2} \leq \sigma^2 \leq \frac{(n-1)S^2}{\chi_{\frac{\alpha}{2},n-1}^2}$
#
# ### Siguiente script toma muchas muestras de las distribuciones Normal y Logística calcula cuántas veces 
#
# ### el intervalo calculado contiene la varianza de la población.  Se estima $\alpha$ de la fórmula, pues 
# ### el número de veces que intervalo contiene a $\sigma^2$  de la población dividido entre el número total de pruebas tiene una probabilidad igial a $1- \alpha$. De ahí puedes calcular $\alpha$  y comparar contra el valor de $\alpha$  utilizado. Sólo en el caso de la Gaussiana se obtiene una línea recta

# +
mu, sig = 2, 3
eta = sqrt(3)*sig/pi
n, N = 15, 10^4
dNormal   = Normal(mu, sig)
dLogistic = Logistic(mu, eta)
alphaUsed = 0.001:0.001:0.1

function alphaSimulator(dist, n, alpha)
    popVar        = var(dist)
    coverageCount = 0
    for _ in 1:N
        sVar = var(rand(dist, n))
        L = (n - 1) * sVar / quantile(Chisq(n-1),1-alpha/2)
        U = (n - 1) * sVar / quantile(Chisq(n-1),alpha/2)
        coverageCount +=  L < popVar && popVar < U
    end
    1 - coverageCount/N
end

scatter(alphaUsed, alphaSimulator.(dNormal,n,alphaUsed), 
	c=:blue, msw=0, label="Normal")
scatter!(alphaUsed, alphaSimulator.(dLogistic, n, alphaUsed), 
	c=:red, msw=0, label="Logistic")
plot!([0,0.1],[0,0.1],c=:black, width=3, label="1:1 slope", 
	xlabel=L"\alpha"*" used", ylabel=L"\alpha"*" actual", 
	legend=:topleft, xlim=(0,0.1), ylims=(0,0.2))
# -

# ## Carga Librerías para leer matlab, probar hipótesis, etc

Pkg.add("MAT")
Pkg.add("Dates")
Pkg.add("Measures")
Pkg.add("HypothesisTests")
using MAT
using Dates
using Measures
using HypothesisTests

# ### Carga los datos de velocidad del anclaje

# +
vars=matread("/Users/julios/JULIA/curso_datos_julia/tutorials/LR5309_PM11_489m_h.mat")
v=vars["v"];u=vars["u"];time=vars["t"];prof=vars["pb"];temp=vars["tem"];
data1=v[:,20];data2=v[:,20]+randn(length(v[:,20])).*1.e-0;

#sampleData=temp[1:Int64(ceil(length(temp)/2))];
# -

# ### Para convertir fechas de matlab

# +
	const MATLAB_EPOCH = Dates.DateTime(-0001,12,31)
#	const MATLAB_EPOCH = Dates.DateTime(-1,12,31)

"""
     datenum(d::Dates.DateTime)
Converts a Julia DateTime to a MATLAB style DateNumber.
MATLAB represents time as DateNumber, a double precision floating
point number being the the number of days since January 0, 0000
Example
    datenum(now())
"""
function datenum(d::Dates.DateTime)
    Dates.value(d - MATLAB_EPOCH) /(1000 * 60 * 60 * 24)
end
date2num(d::Dates.DateTime) = Dates.value(d-MATLAB_EPOCH)/(1000*60*60*24)
num2date(n::Number) =  MATLAB_EPOCH + Dates.Millisecond(round(Int64, n*1000*60*60*24))
# -

fecha=num2date.(time[21:end-13]);
temp2=temp[21:end-13];
length(fecha)/(24*7);
time2=time[21:end-13]
time2=reshape(time2,24,93*7);
temp2=reshape(temp2,24,93*7);
mtemp2=mean(temp2,dims=1);
mtime2=mean(time2,dims=1);
fecha2=num2date.(mtime2);
size(mtemp2)

fecha2[1:10]

# +
months2=Dates.month.(fecha2);
sample = [months2 .==l for l=1:12];
daysm=[sum(sample[l]) for l in 1:12];
monthlym2=[sum(mtemp2.*sample[l])/daysm[l] for l in 1:12];

plot([1:12],monthlym2)
# -

sample[2]

months2

plot(vec(fecha2),vec(mtemp2))

fecha=num2date.(time)
plot(fecha,temp)

sampleData=temp[1:Int64(ceil(length(temp)/2))];
sampleData=mtemp2;
size(sampleData)

# +
Random.seed!(0)

n, N = length(sampleData), 10^4
alpha = 0.05

bootstrapSampleMeans = [mean(rand(sampleData, n)) for i in 1:N]
Lmean = quantile(bootstrapSampleMeans, alpha/2)
Umean = quantile(bootstrapSampleMeans, 1-alpha/2)

bootstrapSampleMedians = [median(rand(sampleData, n)) for i in 1:N]
Lmed = quantile(bootstrapSampleMedians, alpha/2)
Umed = quantile(bootstrapSampleMedians, 1-alpha/2)

println("Bootstrap confidence interval for the mean: ", (Lmean, Umean) )
println("Bootstrap confidence interval for the median: ", (Lmed, Umed) )

stephist(bootstrapSampleMeans, bins=100, c=:blue,
    normed=true, label="Sample \nmeans")

plot!([Lmean, Lmean],[0,20], c=:black, ls=:dash, label="95% CI")
plot!([Umean, Umean],[0,20],c=:black, ls=:dash, label="",
  xlims=(8.7,9.0), xlabel="Sample Means", ylabel="Density")

#plot!([Lmean, Lmean],[0,2], c=:black, ls=:dash, label="90% CI")
#plot!([Umean, Umean],[0,2],c=:black, ls=:dash, label="",
#    xlims=(52,54), ylims=(0,2), xlabel="Sample Means", #ylabel="Density")

# -

# ## Kolmogorov-Smirnov

# +
#using Distributions, StatsBase, HypothesisTests, Plots, Random; pyplot()
Random.seed!(0)

n = 25
N = 10^4
xGrid = -10:0.001:10
kGrid = 0:0.01:5
dist1, dist2 = Exponential(1), Normal()

function ksStat(dist)
    data = rand(dist,n)
    Fhat = ecdf(data)
    sqrt(n)*maximum(abs.(Fhat.(xGrid) - cdf.(dist,xGrid)))
end

kStats1 = [ksStat(dist1) for _ in 1:N]
kStats2 = [ksStat(dist2) for _ in 1:N]

p1 = stephist(kStats1, bins=50, 
	c=:blue, label="KS stat (Exponential)", normed=true)
p1 = plot!(kGrid, pdf.(Kolmogorov(),kGrid), 
	c=:red, label="Kolmogorov PDF", xlabel="K", ylabel="Density")

p2 = stephist(kStats2, bins=50, 
	c=:blue, label="KS stat (Normal)", normed=true)
p2 = plot!(kGrid, pdf.(Kolmogorov(),kGrid), 
	c=:red, label="Kolmogorov PDF", xlabel="K", ylabel="Density")

plot(p1, p2, xlims=(0,2.5), ylims=(0,1.8), size=(800, 400))
# -

plot(vec(mtemp2.-mean(mtemp2)))

# +
#using Random,Distributions,StatsBase,Plots,HypothesisTests,Measures; pyplot()

Random.seed!(3)
data=vec((mtemp2.-mean(mtemp2))./std(mtemp2))
distH0 = Normal(0.0,0.75)
dist = Normal(mean(data),1.0)
n = Int64(ceil(length(data)))
#data = rand(dist,n)

Fhat = ecdf(data)
diffF(dist, x) = sqrt(n)*(Fhat(x) - cdf.(dist,x))
xGrid = -1.5:0.001:1.5
ksStat1 = maximum(abs.(diffF(distH0, xGrid)))

M = 10^5
KScdf(x) = sqrt(2pi)/x*sum([exp(-(2k-1)^2*pi^2 ./(8x.^2)) for k in 1:M])

println("p-value calculated via series: ",
	1-KScdf(ksStat1))
println("p-value calculated via Kolmogorov distribution: ",
	1-cdf(Kolmogorov(),ksStat1),"\n")

println(ApproximateOneSampleKSTest(data,distH0))

p1 = plot(xGrid, Fhat(xGrid), 
	c=:black, lw=1, label="ECDF from data")
p1 = plot!(xGrid, cdf.(dist,xGrid), 
	c=:blue, ls=:dot, label="CDF under \n alternative distribution")
p1 = plot!(xGrid, cdf.(distH0,xGrid), 
	c=:red, ls=:dot, label="CDF under \n postulated H0", 
	xlims=(-1.5,1.5), xlabel = "x", ylabel = "Probability")

p2= plot(cdf.(dist,xGrid), diffF(dist, xGrid),lw=0.5, 
	c=:blue,	label="KS Process under \n actual distribution")
p2 = plot!(cdf.(distH0,xGrid), diffF(distH0, xGrid), lw=0.5, 
	c=:red, xlims=(0.0,1.5), label="KS Process under \n postulated H0",
    xlabel = "t", ylabel = "K-S Process")

plot(p1, p2, legend=:bottomright, size=(800, 400), margin = 5mm)
# -


