%Nines Pantos 

%------------------------------------------------------------------------------------------------------------------------------
format short
%---------------------------------------------------------------
name = 'Pantos';                  %Name 
surname = 'Nines';                %Surname
%---------------------------------------------------------------
ON = uint8(name);                 %Convert string into ASCII
EP = uint8(surname);
N_1 = sum(ON);                    %Number of nanoparticles in part A
N_2 = sum(EP);                    %Number of nanoparticles in part B
if N_1 > N_2 
    x = N_2/N_1;
else 
    x = N_1/N_2;
end
N_1 = round(N_2*x);
N_2 = round(N_1*x);
N_total = N_1 + N_2;              %Total number of nanoparticles
%---------------------------------------------------------------

