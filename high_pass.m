%
% high_pass project
% 
% Authors: George Redivo and Bruno Porcher
%

function ret = high_pass(pass_freq, order, signal, fa, show_freq_graph, gain)
coef = pass_freq / (fa/2);
hp_filt = fir1(order, coef, 'high');
ret = filtfilt(hp_filt, 1, signal);
if show_freq_graph
    figure(1);
    hold on;
    freqz(hp_filt*gain, 1, 14000, fa);
    ax = findall(gcf, 'Type', 'axes');
    set(ax, 'XScale', 'log');
    set(ax, 'XLim', [0 25000]);
end;
