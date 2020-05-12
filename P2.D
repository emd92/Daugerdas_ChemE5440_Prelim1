#Problem 2: Part D
#S = 0.02
using DifferentialEquations

function perez!(du,u,p,t)
       #Parameter Values
              ax = 3.9*10^-2; ay = 4.3*10^-3; Bx = 6.1; By = 5.7; zx = 1.3*10^-5; xz = 12*10^-2;
              gy = 1.05; gz = 1.04; yz = 11*10^-3; xy = 7.9*10^-4;
              nzx = 2.32; n = 2;
       S = 0.02
       du[1] = (ax + Bx*S)/(1 + S + (u[3]/zx)^nzx) - u[1]
       du[2] = (ay + By*S)/(1 + S + (u[1]/xy)^n) - gy*u[2]
       du[3] = 1/(1 + (u[1]/xz)^n + (u[2]/yz)^n) - gz*u[3]
end

u0 = [0.0;0.0;0.0] #Intial Conditions
tspan = (0.0,50) #Time Span

prob = ODEProblem(perez!,u0,tspan)
sol = solve(prob)

#Time to Plot!
using Plots

plt = plot(sol, vars=(0,1), xaxis = "t", yaxis = "X")
display(plt)

#S=10
function perez!(du,u,p,t)
       #Parameter Values
              ax = 3.9*10^-2; ay = 4.3*10^-3; Bx = 6.1; By = 5.7; zx = 1.3*10^-5; xz = 12*10^-2;
              gy = 1.05; gz = 1.04; yz = 11*10^-3; xy = 7.9*10^-4;
              nzx = 2.32; n = 2;
       S = 10
       du[1] = (ax + Bx*S)/(1 + S + (u[3]/zx)^nzx) - u[1]
       du[2] = (ay + By*S)/(1 + S + (u[1]/xy)^n) - gy*u[2]
       du[3] = 1/(1 + (u[1]/xz)^n + (u[2]/yz)^n) - gz*u[3]
end

u0 = [0.0;0.0;0.0] #Intial Conditions
tspan = (0.0,50) #Time Span

prob = ODEProblem(perez!,u0,tspan)
sol = solve(prob)

#Time to Plot!
using Plots

plt = plot(sol, vars=(0,1), xaxis = "t", yaxis = "X")
display(plt)

#S=10^5
function perez!(du,u,p,t)
       #Parameter Values
              ax = 3.9*10^-2; ay = 4.3*10^-3; Bx = 6.1; By = 5.7; zx = 1.3*10^-5; xz = 12*10^-2;
              gy = 1.05; gz = 1.04; yz = 11*10^-3; xy = 7.9*10^-4;
              nzx = 2.32; n = 2;
       S = 10^5
       du[1] = (ax + Bx*S)/(1 + S + (u[3]/zx)^nzx) - u[1]
       du[2] = (ay + By*S)/(1 + S + (u[1]/xy)^n) - gy*u[2]
       du[3] = 1/(1 + (u[1]/xz)^n + (u[2]/yz)^n) - gz*u[3]
end

u0 = [0.0;0.0;0.0] #Intial Conditions
tspan = (0.0,50) #Time Span

prob = ODEProblem(perez!,u0,tspan)
sol = solve(prob)

#Time to Plot!
using Plots

plt = plot(sol, vars=(0,1), xaxis = "t", yaxis = "X")
display(plt)
