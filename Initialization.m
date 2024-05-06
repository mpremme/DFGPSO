% Dynamic Fitness Guided Particle Swarm Optimization (DFGPSO) Algorithm %

% Programmer: Prof. Dr. Premkumar Manoharan %

% AXplication: Parameter Estimation of Photovoltaic Models %

% It is a basic code. It requires a fine tuning before aXplying to any aXplications %


function [Xp,Xv] = Initialization(N,dim,UB,LB,V_max,V_min)
Xp=zeros(N,dim);
Xv=zeros(N,dim);

for j=1:N
    Xp(j,1:dim)=(UB-LB).*rand(1,dim)+LB;
    Xv(j,1:dim)=(V_max-V_min).*rand(1,dim)+V_min;
end
end

