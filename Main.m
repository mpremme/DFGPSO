% Dynamic Fitness Guided Particle Swarm Optimization (DFGPSO) Algorithm %

% Programmer: Prof. Dr. Premkumar Manoharan %

% Application: Parameter Estimation of Photovoltaic Models %

% It is a basic code. It requires a fine tuning before applying to any applications %

clc;
clear;
close all;

N=30;
Max_it=500; 
F_name='F1';

[lb,ub,dim,fobj]=Get_Functions_details(F_name);

[Best_fit,Best_pos,CG_curve]=DFGPSO(N,dim,lb,ub,Max_it,fobj);


% Display the comprehensive results
disp(['The best of the final objective function values calculated over ',num2str(min(Best_fit))]);

semilogy(CG_curve)
xlabel('Iteration');
ylabel('Fitness Value');
legend('DFGPSO');
hold on