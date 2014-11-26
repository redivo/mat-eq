function varargout = equalizer_gui(varargin)
% EQUALIZER_GUI MATLAB code for equalizer_gui.fig
%      EQUALIZER_GUI, by itself, creates a new EQUALIZER_GUI or raises the existing
%      singleton*.
%
%      H = EQUALIZER_GUI returns the handle to a new EQUALIZER_GUI or the handle to
%      the existing singleton*.
%
%      EQUALIZER_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EQUALIZER_GUI.M with the given input arguments.
%
%      EQUALIZER_GUI('Property','Value',...) creates a new EQUALIZER_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before equalizer_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to equalizer_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help equalizer_gui

% Last Modified by GUIDE v2.5 07-Jun-2013 20:43:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @equalizer_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @equalizer_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before equalizer_gui is made visible.
function equalizer_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to equalizer_gui (see VARARGIN)

% Choose default command line output for equalizer_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes equalizer_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = equalizer_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function gain_lp_Callback(hObject, eventdata, handles)
% hObject    handle to gain_lp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_lp'), 'Value'));
set(findobj(gcf, 'Tag', 'label_lp'), 'String', tmp_gain_value);


% --- Executes during object creation, after setting all properties.
function gain_lp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_lp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function gain_bp1_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp1'), 'Value'));
set(findobj(gcf, 'Tag', 'label_bp1'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_bp2_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp2'), 'Value'));
set(findobj(gcf, 'Tag', 'label_bp2'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_bp3_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp3'), 'Value'));
set(findobj(gcf, 'Tag', 'label_bp3'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_bp4_teste_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp4_teste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function gain_bp4_teste_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp4_teste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_bp5_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp5'), 'Value'));
tmp_gain_value
set(findobj(gcf, 'Tag', 'label_bp5'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_bp6_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp6'), 'Value'));
set(findobj(gcf, 'Tag', 'label_bp6'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_hp_Callback(hObject, eventdata, handles)
% hObject    handle to gain_hp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_hp'), 'Value'));
set(findobj(gcf, 'Tag', 'label_hp'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_hp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_hp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_Callback(hObject, eventdata, handles)
% hObject    handle to gain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain'), 'Value'));
set(findobj(gcf, 'Tag', 'gain_label'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get input variables
play_orig = get(findobj(gcf, 'Tag', 'play_original'), 'Value');
gain_general = get(findobj(gcf, 'Tag', 'gain'), 'Value');
sound = get(findobj(gcf, 'Tag', 'play_original'), 'Value');
input_str = get(findobj(gcf, 'Tag', 'input'), 'String');
f_order = str2num(get(findobj(gcf, 'Tag', 'dyn_filter_order'), 'String'));
plot_eq_graph = get(findobj(gcf, 'Tag', 'graphics'), 'Value');
b_order = get(findobj(gcf, 'Tag', 'best_order'), 'Value');

gain_lp = get(findobj(gcf, 'Tag', 'gain_lp'), 'Value');

gain_bp1 = get(findobj(gcf, 'Tag', 'gain_bp1'), 'Value');
gain_bp2 = get(findobj(gcf, 'Tag', 'gain_bp2'), 'Value');
gain_bp3 = get(findobj(gcf, 'Tag', 'gain_bp3'), 'Value');
gain_bp4 = get(findobj(gcf, 'Tag', 'gain_bp4'), 'Value');
gain_bp5 = get(findobj(gcf, 'Tag', 'gain_bp5'), 'Value');
gain_bp6 = get(findobj(gcf, 'Tag', 'gain_bp6'), 'Value');
gain_bp7 = get(findobj(gcf, 'Tag', 'gain_bp7'), 'Value');
gain_bp8 = get(findobj(gcf, 'Tag', 'gain_bp8'), 'Value');

gain_hp = get(findobj(gcf, 'Tag', 'gain_hp'), 'Value');

if b_order == 1
    f_order = 0;
end

% Load sound
[sound,FA,bits]=wavread(input_str);

%Do the changes
filtered_sound = equalize(sound, FA, f_order, gain_general, gain_lp, gain_bp1, gain_bp2, gain_bp3, gain_bp4, gain_bp5, gain_bp6, gain_bp7, gain_bp8, gain_hp, plot_eq_graph);

% Reproduce it
if (play_orig)
    wavplay(sound, FA,'sync');
end

wavplay(filtered_sound, FA,'sync');

function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in play_original.
function play_original_Callback(hObject, eventdata, handles)
% hObject    handle to play_original (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of play_original


% --- Executes on slider movement.
function gain_bp8_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp8'), 'Value'));
set(findobj(gcf, 'Tag', 'label_bp8'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_bp7_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp7'), 'Value'));
set(findobj(gcf, 'Tag', 'label_bp7'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain_bp4_Callback(hObject, eventdata, handles)
% hObject    handle to gain_bp4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tmp_gain_value = 20*log10(get(findobj(gcf, 'Tag', 'gain_bp4'), 'Value'));
set(findobj(gcf, 'Tag', 'label_bp4'), 'String', tmp_gain_value);

% --- Executes during object creation, after setting all properties.
function gain_bp4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain_bp4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function dyn_filter_order_Callback(hObject, eventdata, handles)
% hObject    handle to dyn_filter_order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dyn_filter_order as text
%        str2double(get(hObject,'String')) returns contents of dyn_filter_order as a double

% --- Executes during object creation, after setting all properties.
function dyn_filter_order_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dyn_filter_order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in graphics.
function graphics_Callback(hObject, eventdata, handles)
% hObject    handle to graphics (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graphics


% --- Executes on button press in frequency_spectre.
function frequency_spectre_Callback(hObject, eventdata, handles)
% hObject    handle to frequency_spectre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)=

% Hint: get(hObject,'Value') returns toggle state of frequency_spectre


% --- Executes on button press in best_order.
function best_order_Callback(hObject, eventdata, handles)
% hObject    handle to best_order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of best_order
if (get(findobj(gcf, 'Tag', 'best_order'), 'Value') == 1)
    set(findobj(gcf, 'Tag', 'dyn_filter_order'), 'Enable', 'off');
else
    set(findobj(gcf, 'Tag', 'dyn_filter_order'), 'Enable', 'on');
end


% --- Executes on button press in rst.
function rst_Callback(hObject, eventdata, handles)
% hObject    handle to rst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(findobj(gcf, 'Tag', 'gain'), 'Value', 1);
set(findobj(gcf, 'Tag', 'gain_label'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_lp'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_lp'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp1'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp1'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp2'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp2'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp3'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp3'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp4'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp4'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp5'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp5'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp6'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp6'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp7'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp7'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_bp8'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_bp8'), 'String', '0');

set(findobj(gcf, 'Tag', 'gain_hp'), 'Value', 1);
set(findobj(gcf, 'Tag', 'label_hp'), 'String', '0');