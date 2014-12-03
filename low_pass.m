%
% low_pass project
% 
% Authors: George Redivo and Bruno Porcher
%

function ret = low_pass(cut_freq, order, signal, fa, show_freq_graph, gain)
coef = cut_freq / (fa/2);
lp_filt = fir1(order, coef);
ret = filtfilt(lp_filt, 1, signal);
if show_freq_graph
    figure(1);
    hold on;
    freqz(lp_filt*gain, 1, 14000, fa);
    ax = findall(gcf, 'Type', 'axes');
    set(ax, 'XScale', 'log');
    set(ax, 'XLim', [0 25000]);
end;
