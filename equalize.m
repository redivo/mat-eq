%
% Equalizer
% 
% Authors: George Redivo and Bruno Porcher
%

function ret = equalize(original_sound, FA, filter_order, gain, gain_lp, gain_bp1, gain_bp2, gain_bp3, gain_bp4, gain_bp5, gain_bp6, gain_bp7, gain_bp8, gain_hp, show_freq_graph)

% Band definitions
lp_cut = 70;
band_pass1 = 180;
band_pass2 = 320;
band_pass3 = 600;
band_pass4 = 1000;
band_pass5 = 3000;
band_pass6 = 6000;
band_pass7 = 12000;
hp_pass = 14000;

order1 = 1100;
order2 = 1350;
order3 = 1050;
order4 = 800;
order5 = 380;
order6 = 300;
order7 = 300;
order8 = 300;
order9 = 300;
order10 = 300;

if filter_order > 0
    order1 = filter_order;
    order2 = filter_order;
    order3 = filter_order;
    order4 = filter_order;
    order5 = filter_order;
    order6 = filter_order;
    order7 = filter_order;
    order8 = filter_order;
    order9 = filter_order;
    order10 = filter_order;
end

% Low Pass filtring
sound_lp = low_pass(lp_cut, order1, original_sound, FA, show_freq_graph, gain_lp) * gain_lp;

% Band Pass 1 filtring
sound_bp1 = band_pass(lp_cut, band_pass1, order2, original_sound, FA, show_freq_graph, gain_bp1) * gain_bp1;

% Band Pass 2 filtring
sound_bp2 = band_pass(band_pass1, band_pass2, order3, original_sound, FA, show_freq_graph, gain_bp2) * gain_bp2;

% Band Pass 3 filtring
sound_bp3 = band_pass(band_pass2, band_pass3, order4, original_sound, FA, show_freq_graph, gain_bp3) * gain_bp3;

% Band Pass 4 filtring
sound_bp4 = band_pass(band_pass3, band_pass4, order5, original_sound, FA, show_freq_graph, gain_bp4) * gain_bp4;

% Band Pass 5 filtring
sound_bp5 = band_pass(band_pass4, band_pass5, order6, original_sound, FA, show_freq_graph, gain_bp5) * gain_bp5;

% Band Pass 6 filtring
sound_bp6 = band_pass(band_pass5, band_pass6, order7, original_sound, FA, show_freq_graph, gain_bp6) * gain_bp6;

% Band Pass 7 filtring
sound_bp7 = band_pass(band_pass6, band_pass7, order8, original_sound, FA, show_freq_graph, gain_bp7) * gain_bp7;

% Band Pass 8 filtring
sound_bp8 = band_pass(band_pass7, hp_pass, order9, original_sound, FA, show_freq_graph, gain_bp8) * gain_bp8;

% High Pass filtring
sound_hp = high_pass(hp_pass, order10, original_sound, FA, show_freq_graph, gain_hp) * gain_hp;

ret = (sound_lp + sound_bp1 + sound_bp2 + sound_bp3 + sound_bp4 + sound_bp5 + sound_bp6  + sound_bp7  + sound_bp8 + sound_hp) * gain;
