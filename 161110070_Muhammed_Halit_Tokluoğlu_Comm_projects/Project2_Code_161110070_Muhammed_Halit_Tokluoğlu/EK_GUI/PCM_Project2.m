function varargout = PCM_Project2(varargin)
% PCM_PROJECT2 MATLAB code for PCM_Project2.fig
%      PCM_PROJECT2, by itself, creates a new PCM_PROJECT2 or raises the existing
%      singleton*.
%
%      H = PCM_PROJECT2 returns the handle to a new PCM_PROJECT2 or the handle to
%      the existing singleton*.
%
%      PCM_PROJECT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PCM_PROJECT2.M with the given input arguments.
%
%      PCM_PROJECT2('Property','Value',...) creates a new PCM_PROJECT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PCM_Project2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PCM_Project2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PCM_Project2

% Last Modified by GUIDE v2.5 15-May-2021 13:40:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PCM_Project2_OpeningFcn, ...
                   'gui_OutputFcn',  @PCM_Project2_OutputFcn, ...
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


% --- Executes just before PCM_Project2 is made visible.
function PCM_Project2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PCM_Project2 (see VARARGIN)

% Choose default command line output for PCM_Project2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PCM_Project2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PCM_Project2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function fm_edit_Callback(hObject, eventdata, handles)
% hObject    handle to fm_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fm_edit as text
%        str2double(get(hObject,'String')) returns contents of fm_edit as a double
calc_function(hObject, eventdata, handles);


% --- Executes during object creation, after setting all properties.
function fm_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fm_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fs_edit_Callback(hObject, eventdata, handles)
% hObject    handle to fs_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fs_edit as text
%        str2double(get(hObject,'String')) returns contents of fs_edit as a double
calc_function(hObject, eventdata, handles);


% --- Executes during object creation, after setting all properties.
function fs_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_edit_Callback(hObject, eventdata, handles)
% hObject    handle to L_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L_edit as text
%        str2double(get(hObject,'String')) returns contents of L_edit as a double
calc_function(hObject, eventdata, handles);


% --- Executes during object creation, after setting all properties.
function L_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sh_sample_check.
function sh_sample_check_Callback(hObject, eventdata, handles)
% hObject    handle to sh_sample_check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sh_sample_check
calc_function(hObject, eventdata, handles);


% --- Executes on button press in sh_sampled_check2.
function sh_sampled_check2_Callback(hObject, eventdata, handles)
% hObject    handle to sh_sampled_check2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sh_sampled_check2
calc_function(hObject, eventdata, handles);


% --- Executes on button press in sh_originial_text.
function sh_originial_text_Callback(hObject, eventdata, handles)
% hObject    handle to sh_originial_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sh_originial_text
calc_function(hObject, eventdata, handles);


% --- Executes on selection change in signal_select_menu.
function signal_select_menu_Callback(hObject, eventdata, handles)
% hObject    handle to signal_select_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns signal_select_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from signal_select_menu
calc_function(hObject, eventdata, handles);


% --- Executes during object creation, after setting all properties.
function signal_select_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to signal_select_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calc_button.
function calc_button_Callback(hObject, eventdata, handles)
% hObject    handle to calc_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
calc_function(hObject, eventdata, handles);


function calc_function(hObject, eventdata, handles)
fm = str2num(get(handles.fm_edit, 'String'));
fs = str2num(get(handles.fs_edit, 'String'));
L = str2num(get(handles.L_edit, 'String'));

Magnitude = 1;
initial_time = -20/fm; % Initial Time, it is adjusted to fm
final_time = 20/fm; % Final time, it is adjusted to fm
increment = (10^-2)/fm; % time increment, it is adjusted to fm
t = initial_time:increment:final_time; % time according to 100 wave
w = 2*pi*fm;
fb = fm;

signal_type = get(handles.signal_select_menu,'Value');
if signal_type == 1
    y = cos(w*t);
elseif signal_type == 2
    y = sin(w*t);
elseif signal_type == 3
    y = sinc(w*t);
    fb = 3*fm;
elseif signal_type == 4
    y = square(w*t);
    fb = 20 * fm;
elseif signal_type == 5
    y = sawtooth(w*t);
    fb = 20 * fm;
else
    display('Could not find the signal type');
end


set(handles.fb_text, 'String', num2str(fb));
[sample,sample_axis] = sample_func(y,increment,fs,initial_time,final_time);

[bitstream,quantizedOutput] = quantize_func(L,-Magnitude,Magnitude,sample);

decodedSignal = decode_bitstream_func(L,bitstream);

reconstructedSignal = LowPassFilter(decodedSignal,sample_axis,fs/2,t);

axes(handles.axes1);
cla;
if get(handles.sh_sample_check,'Value')
    plot(t,y,'Color', 'black'); hold on;
    stem(sample_axis,sample,'filled','Color','red');
    xlim([-1 1]);
    legend('Original Signal', 'Sampled Signal');
    title1_str = strcat('Original Signal with Sampled');
else
    plot(t,y,'Color', 'black'); hold on;
    xlim([-1 1]);
    legend('Sampled Signal');
    title1_str = strcat('Original Signal');
end
xlabel('time'); ylabel('Signal');title(title1_str);

axes(handles.axes2);
cla;
if get(handles.sh_sampled_check2,'Value')
    stem(sample_axis,sample,'filled','Color','red'); hold on;
    stem(sample_axis,quantizedOutput, 'Color', 'blue');
    xlim([-1 1]);
    legend('Sampled Signal', 'Quantized Signal');
    title2_str = strcat('Quantized Signal with Sampled');
else
    stem(sample_axis,quantizedOutput, 'Color', 'blue');
    xlim([-1 1]);
    legend('Quantized Signal');
    title2_str = strcat('Quantized Signal');
end
xlabel('time'); ylabel('Signal');title(title2_str);


set(handles.bitstream_text,'String',num2str(bitstream...
    (round(length(bitstream)/2):round(length(bitstream)/2 + fs*log2(L)))));

axes(handles.axes3);
cla;
stem(sample_axis,decodedSignal, 'Color', 'black');
xlim([-1 1]);
legend('Decoded Signal from bitstream');
title3_str = strcat('Decoded Signal');

xlabel('time'); ylabel('Signal');title(title3_str);


axes(handles.axes4);
cla;
if get(handles.sh_originial_text,'Value')
    plot(t,y,'Color', 'blue'); hold on;
    plot(t,reconstructedSignal, 'Color', 'red');
    xlim([-1 1]);
    ylim([-1.2 1.2]);
    legend('Original Signal', 'Reconstructed Signal');
    title4_str = strcat('Reconstructed Signal with Original');
else
    plot(t,reconstructedSignal, 'Color', 'red');
    xlim([-1 1]);
    ylim([-1.2 1.2]);
    legend('Reconstructed Signal');
    title4_str = strcat('Reconstructed Signal');
end
xlabel('time'); ylabel('Signal');title(title4_str);
