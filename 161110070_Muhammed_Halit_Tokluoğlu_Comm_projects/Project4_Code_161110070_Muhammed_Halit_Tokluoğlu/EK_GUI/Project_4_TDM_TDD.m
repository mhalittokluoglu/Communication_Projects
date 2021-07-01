function varargout = Project_4_TDM_TDD(varargin)
% PROJECT_4_TDM_TDD MATLAB code for Project_4_TDM_TDD.fig
%      PROJECT_4_TDM_TDD, by itself, creates a new PROJECT_4_TDM_TDD or raises the existing
%      singleton*.
%
%      H = PROJECT_4_TDM_TDD returns the handle to a new PROJECT_4_TDM_TDD or the handle to
%      the existing singleton*.
%
%      PROJECT_4_TDM_TDD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT_4_TDM_TDD.M with the given input arguments.
%
%      PROJECT_4_TDM_TDD('Property','Value',...) creates a new PROJECT_4_TDM_TDD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project_4_TDM_TDD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project_4_TDM_TDD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project_4_TDM_TDD

% Last Modified by GUIDE v2.5 30-May-2021 12:09:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project_4_TDM_TDD_OpeningFcn, ...
                   'gui_OutputFcn',  @Project_4_TDM_TDD_OutputFcn, ...
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


% --- Executes just before Project_4_TDM_TDD is made visible.
function Project_4_TDM_TDD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project_4_TDM_TDD (see VARARGIN)

% Choose default command line output for Project_4_TDM_TDD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project_4_TDM_TDD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project_4_TDM_TDD_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Signal1FreqEdit_Callback(hObject, eventdata, handles)
% hObject    handle to Signal1FreqEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Signal1FreqEdit as text
%        str2double(get(hObject,'String')) returns contents of Signal1FreqEdit as a double


% --- Executes during object creation, after setting all properties.
function Signal1FreqEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Signal1FreqEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Signal2FreqEdit_Callback(hObject, eventdata, handles)
% hObject    handle to Signal2FreqEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Signal2FreqEdit as text
%        str2double(get(hObject,'String')) returns contents of Signal2FreqEdit as a double


% --- Executes during object creation, after setting all properties.
function Signal2FreqEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Signal2FreqEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SamplingFreqEdit_Callback(hObject, eventdata, handles)
% hObject    handle to SamplingFreqEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SamplingFreqEdit as text
%        str2double(get(hObject,'String')) returns contents of SamplingFreqEdit as a double


% --- Executes during object creation, after setting all properties.
function SamplingFreqEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SamplingFreqEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SamplingWidthEdit_Callback(hObject, eventdata, handles)
% hObject    handle to SamplingWidthEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SamplingWidthEdit as text
%        str2double(get(hObject,'String')) returns contents of SamplingWidthEdit as a double


% --- Executes during object creation, after setting all properties.
function SamplingWidthEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SamplingWidthEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalculateButton.
function CalculateButton_Callback(hObject, eventdata, handles)
% hObject    handle to CalculateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fm1 = str2num(get(handles.Signal1FreqEdit, 'String'));
fm2 = str2num(get(handles.Signal2FreqEdit, 'String'));
fs = str2num(get(handles.SamplingFreqEdit, 'String'));
SamplingWidth = str2num(get(handles.SamplingWidthEdit, 'String'));

if fm1 < fm2
    timeIncrement = 1/(fm1*5000);
    startTime = -5/fm1;
    endTime = 5/fm1;
else
    timeIncrement = 1/(fm2*5000);
    startTime = -5/fm2;
    endTime = 5/fm2;
end
timeAxis = startTime:timeIncrement:endTime;

signal_1_type = get(handles.Signal1SelectMenu,'Value');
fb1 = 1;
if signal_1_type == 1
    y1 = cos(2*pi*fm1*timeAxis);
elseif signal_1_type == 2
    y1 = sin(2*pi*fm1*timeAxis);
elseif signal_1_type == 3
    y1 = sinc(2*pi*fm1*timeAxis);
    fb1 = 3*fm1;
else
    display('Could not find the signal type');
end

signal_2_type = get(handles.Signal2SelectMenu,'Value');
fb2 = 1;
if signal_2_type == 1
    y2 = sin(2*pi*fm2*timeAxis);
elseif signal_2_type == 2
    y2 = cos(2*pi*fm2*timeAxis);
elseif signal_2_type == 3
    y2 = sinc(2*pi*fm2*timeAxis);
    fb2 = 3*fm2;
else
    display('Could not find the signal type');
end

set(handles.Bandwidth1Text, 'String', num2str(fb1));
set(handles.Bandwidth2Text, 'String', num2str(fb2));

SamplingOffset1 = 0;
SamplingOffset2 = 1/(2*fs*timeIncrement);
SampledSignal_1 = sample_func(SamplingWidth,fs,SamplingOffset1,timeAxis,y1);
SampledSignal_2 = sample_func(SamplingWidth,fs,SamplingOffset2,timeAxis,y2);


TDM_Signal = SampledSignal_1 + SampledSignal_2;

[SampledTDD_Signal_1,SampledTDD_Signal_2] = SampleTDM_Signals(...
    timeAxis, TDM_Signal, fs, SamplingWidth);

ReconstructedSignal1 = LowPassFilter_func(timeAxis,SampledTDD_Signal_1,fs/2);
ReconstructedSignal2 = LowPassFilter_func(timeAxis,SampledTDD_Signal_2,fs/2);

axes(handles.axes1);
cla;
plot(timeAxis,y1);
xlim([-1 1]);
legend('Signal 1');
title1_str = strcat('Signal 1 (fm:', num2str(fm1),')');
title(title1_str);

axes(handles.axes2);
cla;
plot(timeAxis,y2);
xlim([-1 1]);
legend('Signal 2');
title2_str = strcat('Signal 2 (fm:', num2str(fm2),')');
title(title2_str);

axes(handles.axes3);
cla;
plot(timeAxis,SampledSignal_1);
xlim([-1 1]);
legend('Sampled Signal 1');
title3_str = strcat('fs:', num2str(fs),', SamplingWidth:',num2str(SamplingWidth));
title(title3_str);

axes(handles.axes4);
cla;
plot(timeAxis,SampledSignal_2);
xlim([-1 1]);
legend('Sampled Signal 2');
title(title3_str);

axes(handles.axes5);
cla;
plot(timeAxis,SampledSignal_1); hold on;
plot(timeAxis,SampledSignal_2);
xlim([-1 1]);
legend('Sampled Signal 1', 'Sampled Signal 2');

axes(handles.axes6);
cla;
plot(timeAxis,TDM_Signal);
xlim([-1 1]);
legend('TDM Signal');

axes(handles.axes7);
cla;
plot(timeAxis,SampledTDD_Signal_1);
xlim([-1 1]);
legend('Receiver TDD Sampled Signal 1')
title('Receiver Part After Sampling Circuit');

axes(handles.axes8);
cla;
plot(timeAxis,SampledTDD_Signal_2);
xlim([-1 1]);
legend('Receiver TDD Sampled Signal 2')
title('Receiver Part After Sampling Circuit');

axes(handles.axes9);
cla;
plot(timeAxis,ReconstructedSignal1);
xlim([-1 1]);
legend('Reconstructed Signal 1')
title('After Lowpass Filter');

axes(handles.axes10);
cla;
plot(timeAxis,ReconstructedSignal2);
xlim([-1 1]);
legend('Reconstructed Signal 2')
title('After Lowpass Filter');


% 
% axes(handles.axes3);
% cla;
% stem(sample_axis,decodedSignal, 'Color', 'black');
% xlim([-1 1]);
% legend('Decoded Signal from bitstream');
% title3_str = strcat('Decoded Signal');
% set(handles.fb_text, 'String', num2str(fb));
% fm = str2num(get(handles.fm_edit, 'String'));


% --- Executes on selection change in Signal1SelectMenu.
function Signal1SelectMenu_Callback(hObject, eventdata, handles)
% hObject    handle to Signal1SelectMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Signal1SelectMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Signal1SelectMenu


% --- Executes during object creation, after setting all properties.
function Signal1SelectMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Signal1SelectMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Signal2SelectMenu.
function Signal2SelectMenu_Callback(hObject, eventdata, handles)
% hObject    handle to Signal2SelectMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Signal2SelectMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Signal2SelectMenu


% --- Executes during object creation, after setting all properties.
function Signal2SelectMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Signal2SelectMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
