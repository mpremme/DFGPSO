% Dynamic Fitness Guided Particle Swarm Optimization (DFGPSO) Algorithm %

% Programmer: Prof. Dr. Premkumar Manoharan %

% AXplication: Parameter Estimation of Photovoltaic Models %

% It is a basic code. It requires a fine tuning before aXplying to any applications %

function [lb,ub,dim,fobj] = Get_Functions_details(F)

switch F
    case 'F1'
        fobj = @F1;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F2'
        fobj = @F2;
        lb=-10;
        ub=10;
        dim=30;
        
    case 'F3'
        fobj = @F3;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F4'
        fobj = @F4;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F5'
        fobj = @F5;
        lb=-30;
        ub=30;
        dim=30;
        
    end

% F1

function o = F1(x)
so = 0;
x = x - so*ones(1,size(x,2));
o=sum(x.^2);
end

% F2

function o = F2(x)
so = 0;
x = x - so*ones(1,size(x,2));
o=sum(abs(x))+prod(abs(x));
end

% F3

function o = F3(x)
so = 0;
x = x - so*ones(1,size(x,2));    
dim = size(x,2);
o=0;
for i=1:dim
    o=o+sum(x(1:i))^2;
end
end

% F4

function o = F4(x)
so = 0;
x = x - so*ones(1,size(x,2));
o=max(abs(x));
end

% F5

function o = F5(x)
so = 0;
x = x - so*ones(1,size(x,2));
dim=size(x,2);
o=sum(100*(x(2:dim)-(x(1:dim-1).^2)).^2+(x(1:dim-1)-1).^2);
end

function o=Ufun(x,a,k,m)
o=k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
end
end