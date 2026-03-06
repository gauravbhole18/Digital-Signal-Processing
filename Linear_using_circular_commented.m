% Close all figures and clear all variables
close all;
clear all;

%% Data Input
% Define impulse response sequence h_n
h_n = [2 3 4];

% Define input signal sequence x_n
x_n = [1 2 3 4 5 6];

%% Zero Padding
% Calculate the length of the output after convolution
output_length = length(h_n) + length(x_n) - 1;

% Pad zeros to h_n to match the output length
h_n = [h_n zeros(1, (output_length - length(h_n)))];

% Pad zeros to x_n to match the output length
x_n = [x_n zeros(1, (output_length - length(x_n)))];

% Combine h_n and padded x_n for convenience
h = [h_n x_n];

% Get the length of the combined sequence
len = length(h);

% Initialize a matrix to store circularly shifted versions of h_n
finmat = h_n';

%% Circular Shifter
% Perform circular shift on h_n (len - 1) times
for i = 1 : (len-1)
    % Create a temporary copy of h_n
    mat = h_n;

    % Shift elements of h_n one position to the right
    for j = 2 : length(h_n)
        matc(1) = h_n(length(h_n)); % Move last element to the beginning
        matc(j) = h_n(j-1);          % Shift other elements
    end

    % Update h_n with the shifted version
    h_n = matc;

    % Transpose and add the shifted version to the matrix
    addmat = h_n';
    finmat = [finmat addmat];
end

%% Convolution Calculator
% Print the matrix containing all circular shifts of h_n
disp('Shifted versions of h_n:')
disp(finmat)

% Calculate the convolution using matrix multiplication
convres = finmat * x_n';

% Display the convolution result
disp('Convolution result:')
disp(convres)
