%
% Authors: George Redivo and Bruno Porcher
%

function plot_spectre(sound, fa, title_str)
sound_fft=abs(fft(sound));
m = max(sound_fft);
sound_fft = sound_fft/m;
t=0:length(sound_fft)-1;
t=t*fa/length(t);
plot(t,sound_fft)
axis([t(1) t(end) -0.1 1.1])
xlabel('Frequency (Hz)'), ylabel('Magnitude'), title(title_str);
