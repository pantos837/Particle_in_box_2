%Nines Pantos 



%------------------------------------------------------------------------------------------------------------------------------
format short
clear
%---------------------------------------------------------------
%Initial Conditions
t = 0;                              %Initial time  
total_time = 100000 ;               %Time of simulation 
%---------------------------------------------------------------
%Graph Axis
N_A = [1;total_time];               %Number of particles in box A for every second t.
N_B = [1;total_time];               %Number of particles in box B for every second t.      
time_axis = [1;total_time];         %A vector with values the seconds pased with step one.
N_theoritical = [1;total_time];     %A vector with the number of partciles in box A for every 			              	      second from the theory.
%---------------------------------------------------------------
%Simulation
Convert_to_ASCII                    % Fuction that generates the number of nanoparticles in each box
x = rand(total_time,1);             %Generate a uniformly distirbuted random set of numbers x, 0<x<1
                     
for i=1:total_time
    R = x(i);
    Ratio = N_1/N_total;            %Fraction of particles in part A with total particles 
   
    if R < Ratio                    %Particle goes from A to B
        N_1 = N_1 - 1;
        N_2 = N_2 + 1;
    else                            %Particle goes from B to A 
        N_1 = N_1 + 1;
        N_2 = N_2 - 1;
    end
    N_A(i) = N_1;                   %Asing valuses of number of particles in box A to a vector in 					      every second
    N_B(i) = N_2;
    
    N_theoritical(i) = number_of_nanoparticles(t,N_1); %Theoritical distirbution of nanoparticles 							          after time t
    
    time_axis(i) = t;                %Vector with seconds of simulation
    t = t + 1;                       %Time step = 1
   %--------------------------------------------------------------- 
end 
%Direct ghraph of simulation
 plot(time_axis,N_A,time_axis,N_theoritical);
 xlabel('Time');
 ylabel('Number of Nanoparticles in box A');
 legend('Simulation','Theory')
 %---------------------------------------------------------------

