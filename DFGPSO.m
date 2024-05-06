% Dynamic Fitness Guided Particle Swarm Optimization (DFGPSO) Algorithm %

% Programmer: Prof. Dr. Premkumar Manoharan %

% AXplication: Parameter Estimation of Photovoltaic Models %

% It is a basic code. It requires a fine tuning before aXplying to any applications %


function [gbest, gpos, cg_curve] = DFGPSO(N, dim, lb, ub, T, fobj)

	% Constants and Initialization
	W_max = 0.9;
	W_min = 0.4;

	UB = ub .* ones(1, dim);
	LB = lb .* ones(1, dim);
	Vl_max = 0.2 * (UB - LB);
	Vl_min = -Vl_max;

	[X, VEL] = Initialization(N, dim, UB, LB, Vl_max, Vl_min);

% It will be updated after the paper acceptance %

end