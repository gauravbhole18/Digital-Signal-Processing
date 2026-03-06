% Close all figures and clear all variables
close all;
clear all;

%% Data Input
% Define input signal x_n
x_n = [1 2 3 8 8 9];

% Define impulse response h_n
h_n = [1 2 3 4 5 6];

% Create a copy of h_n for calculations
h = h_n;

% Get the length of the impulse response
len = length(h_n);

% Create a matrix to store circularly shifted versions of h_n
finmat = h_n';

%% Circular Shifter
% Loop through all possible circular shifts (except the original)
for i = 1 : (len-1)
    % Create a temporary copy of h_n for the current shift
    mat = h_n;

    % Perform circular shift by rotating elements one position to the left
    for j = 2 : length(h_n)
        matc(1) = h_n(length(h_n)); % Move last element to the beginning
        matc(j) = h_n(j-1);          % Shift other elements one position
    end

    % Update h_n with the current circular shift
    h_n = matc;

    % Store the shifted version in the matrix
    addmat = h_n';
    finmat = [finmat addmat];
end

%% Convolution Calculator
% Perform circular convolution using matrix multiplication
convres = finmat * x_n';

% Display the convolution result
disp('Convolution result:')
disp(convres)
tiledlayout(3,1)
nexttile
stem(x_n)
title("x(n)")

nexttile
stem(h)
title("h(n)")

nexttile
stem(convres)
title("convolved result")
