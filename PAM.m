% Title: Build signal models by applying various modeling techniques.
% Aim: Use Padé Approximation technique for signal modelling.
% Programmer name: Ashish Ashok Gopal, 1702005, FY MTech
% Department: Department of Electronics Engineering
% Mentor: Dr. Nirmal, HOD
% Department: Department of Electronics Engineering
% Date: 01/12/2017

% ***************Program starts here*************************

% Compute a Fifth-order Padé approximation of a 0.1-second I/O delay.

s = tf('s');
sys = exp(-0.1*s);      % Continuous-time Transfer Function

sysx = pade(sys,5);     % Continuous-time Transfer Function
% Produces a delay-free approximation sysx of the continuous delay system sys.
% All delays are replaced by their Nth-order Padé approximation.

% Expected output of sysx:
% sysx =
%  
%   -s^5 + 300 s^4 - 42000 s^3 + 3.36e06 s^2 - 1.512e08 s + 3.024e09
%   ----------------------------------------------------------------
%    s^5 + 300 s^4 + 42000 s^3 + 3.36e06 s^2 + 1.512e08 s + 3.024e09

pade(0.1,5);

% ***************Program ends here***************************