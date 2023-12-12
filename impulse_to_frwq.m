% Define the impulse response
h = [0.5, 0, -0.5, -0.5, 0, 0.5];
h1 = [0.1, -0.4, 0.5, -0.5, 0.4, -0.1];

% Compute the frequency response
H = fft(h, 512); % 512 is the number of points in the FFT
H2 = fft(h1, 512); % 512 is the number of points in the FFT

% Generate the frequency axis
f = linspace(0, 1, length(H));
f2 = linspace(0, 1, length(H2));
% Plot the magnitude and phase of the frequency response
figure;
plot(f, abs(H));
title('Magnitude Response');
xlabel('Normalized Frequency (f)');
ylabel('Magnitude');

figure;
plot(f2, abs(H2));
title('Magnitude Response');
xlabel('Normalized Frequency (f)');
ylabel('Magnitude');