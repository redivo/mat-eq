%
% Band_pass project
%
% Authors: George Redivo and Bruno Porcher
%

function ret = band_pass(pass_freq, cut_freq, order, signal, fa, show_freq_graph, gain)
pass_coef = pass_freq / (fa/2);
cut_coef = cut_freq / (fa/2);
coef = [pass_coef cut_coef];
bp_filt = fir1(order, coef, 'bandpass');
ret = filtfilt(bp_filt, 1, signal);
if show_freq_graph
    figure(1);
    hold on;
    freqz(bp_filt*gain, 1, 14000, fa);
    ax = findall(gcf, 'Type', 'axes');
    set(ax, 'XScale', 'log');
    set(ax, 'XLim', [0 25000]);
end;
