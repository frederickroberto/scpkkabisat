function varargout = kabisat_123210190(varargin)
% KABISAT_123210190 MATLAB code for kabisat_123210190.fig
%      KABISAT_123210190, by itself, creates a new KABISAT_123210190 or raises the existing
%      singleton*.
%
%      H = KABISAT_123210190 returns the handle to a new KABISAT_123210190 or the handle to
%      the existing singleton*.
%
%      KABISAT_123210190('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KABISAT_123210190.M with the given input arguments.
%
%      KABISAT_123210190('Property','Value',...) creates a new KABISAT_123210190 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kabisat_123210190_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kabisat_123210190_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kabisat_123210190

% Last Modified by GUIDE v2.5 04-Mar-2023 16:53:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kabisat_123210190_OpeningFcn, ...
                   'gui_OutputFcn',  @kabisat_123210190_OutputFcn, ...
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


% --- Executes just before kabisat_123210190 is made visible.
function kabisat_123210190_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kabisat_123210190 (see VARARGIN)

% Choose default command line output for kabisat_123210190
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kabisat_123210190 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kabisat_123210190_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputTahun_Callback(hObject, eventdata, handles)
% hObject    handle to inputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTahun as text
%        str2double(get(hObject,'String')) returns contents of inputTahun as a double


% --- Executes during object creation, after setting all properties.
function inputTahun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnCek.
function btnCek_Callback(hObject, eventdata, handles)
% hObject    handle to btnCek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
angkaInputSTR = get(handles.inputTahun,'string');
angkaInput = str2double(angkaInputSTR);
hasil = rem(angkaInput, 4);

if(hasil==0)
    output = "Tahun Kabisat";
else
    output = "Tahun Biasa";
end

set(handles.outputTahun,'string',(output))


function outputTahun_Callback(hObject, eventdata, handles)
% hObject    handle to outputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outputTahun as text
%        str2double(get(hObject,'String')) returns contents of outputTahun as a double


% --- Executes during object creation, after setting all properties.
function outputTahun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
