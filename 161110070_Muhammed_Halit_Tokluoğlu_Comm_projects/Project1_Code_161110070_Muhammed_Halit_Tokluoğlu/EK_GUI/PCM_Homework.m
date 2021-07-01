function varargout = PCM_Homework(varargin)
% PCM_HOMEWORK MATLAB code for PCM_Homework.fig
%      PCM_HOMEWORK, by itself, creates a new PCM_HOMEWORK or raises the existing
%      singleton*.
%
%      H = PCM_HOMEWORK returns the handle to a new PCM_HOMEWORK or the handle to
%      the existing singleton*.
%
%      PCM_HOMEWORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PCM_HOMEWORK.M with the given input arguments.
%
%      PCM_HOMEWORK('Property','Value',...) creates a new PCM_HOMEWORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PCM_Homework_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PCM_Homework_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PCM_Homework

% Last Modified by GUIDE v2.5 13-May-2021 12:54:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PCM_Homework_OpeningFcn, ...
                   'gui_OutputFcn',  @PCM_Homework_OutputFcn, ...
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


% --- Executes just before PCM_Homework is made visible.
function PCM_Homework_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PCM_Homework (see VARARGIN)

% Choose default command line output for PCM_Homework
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global increment;
global initial_time;
global final_time;
global t;
global Magnitude;

increment = 0.01; % Time increment
initial_time = -1; % Continous Signal initial time
final_time = 1; % Continuous Signal final time
t = initial_time:increment:final_time;
Magnitude = 1;

% UIWAIT makes PCM_Homework wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PCM_Homework_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in signal_select_menu.
function signal_select_menu_Callback(hObject, eventdata, handles)
% hObject    handle to signal_select_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns signal_select_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from signal_select_menu


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



function f_edit_Callback(hObject, eventdata, handles)
% hObject    handle to f_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_edit as text
%        str2double(get(hObject,'String')) returns contents of f_edit as a double


% --- Executes during object creation, after setting all properties.
function f_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_edit (see GCBO)
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


% --- Executes on button press in calculateButton.
function calculateButton_Callback(hObject, eventdata, handles)
% hObject    handle to calculateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
global increment;
global initial_time;
global final_time;
global Magnitude;

f = str2num(get(handles.f_edit,'String'));
w = 2*pi*f;
fs = str2num(get(handles.fs_edit,'String'));
L = str2num(get(handles.L_edit,'String'));
signal_type = get(handles.signal_select_menu,'Value');
if signal_type == 1
    y = cos(w*t);
elseif signal_type == 2
    y = sin(w*t);
elseif signal_type == 3
    y = sinc(w*t);
elseif signal_type == 4
    y = square(w*t);
elseif signal_type == 5
    y = sawtooth(w*t);
else
    display('Could not find the signal type');
end
axes(handles.axes1);
cla;
plot(t,y);
legend('Original Signal');
xlabel('time'); ylabel('Signal');title('Original Signal');

[sample,sample_axis] = sample_func(y,increment,fs,initial_time,final_time);
axes(handles.axes2);
cla;
if get(handles.show_with_original_checkbox,'Value')
    plot(t,y); hold on;
    stem(sample_axis,sample,'filled','Color','red');
    legend('Original Signal', 'Sampled Signal');
else
    stem(sample_axis,sample,'filled','Color','red');
    legend('Sampled Signal');
end
title1_str = strcat('fs = ', num2str(fs), ', f = ', num2str(f));
xlabel('time'); ylabel('Signal');title(title1_str);

[bitstream,quantizedOutput] = quantize_func(L,-Magnitude,Magnitude,sample);
axes(handles.axes3);
cla;
if get(handles.show_with_sample_checkbox,'Value')
    stem(sample_axis,sample,'filled','Color','red');
    hold on;
    stem(sample_axis,quantizedOutput,'Color','blue');
    legend('Sampled Signal', 'Quantized Signal');
else
    stem(sample_axis,quantizedOutput,'Color','blue');
    legend('Quantized Signal');
end
title2_str = strcat('For L = ', num2str(L));
xlabel('time'); ylabel('Signal');title(title2_str);

set(handles.bitstream_vals_text,'String',num2str(bitstream));
threeBit = coding_func(bitstream,3);
threeBitStr = '';
[rowSize,columnSize] = size(threeBit);
for row = 1:rowSize
    for column = 1:columnSize
        threeBitStr = strcat(threeBitStr,num2str(threeBit(row,column)),' ');
    end
    threeBitStr = strcat(threeBitStr,'-');
end
set(handles.three_bit_vals_text, 'String', threeBitStr);

fourBit = coding_func(bitstream,4);
fourBitStr = '';
[rowSize,columnSize] = size(fourBit);
for row = 1:rowSize
    for column = 1:columnSize
        fourBitStr = strcat(fourBitStr,num2str(fourBit(row,column)),' ');
    end
    fourBitStr = strcat(fourBitStr,'-');
end
set(handles.four_bit_vals_text, 'String', fourBitStr);

eightBit = coding_func(bitstream,8);
eightBitStr = '';
[rowSize,columnSize] = size(eightBit);
for row = 1:rowSize
    for column = 1:columnSize
        eightBitStr = strcat(eightBitStr,num2str(eightBit(row,column)),' ');
    end
    eightBitStr = strcat(eightBitStr,'-');
end
set(handles.eight_bit_vals_text, 'String', eightBitStr);


% --- Executes on button press in show_with_sample_checkbox.
function show_with_sample_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to show_with_sample_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of show_with_sample_checkbox


% --- Executes on button press in show_with_original_checkbox.
function show_with_original_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to show_with_original_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of show_with_original_checkbox
