function varargout = cube(varargin)
% CUBE MATLAB code for cube.fig
%      CUBE, by itself, creates a new CUBE or raises the existing
%      singleton*.
%
%      H = CUBE returns the handle to a new CUBE or the handle to
%      the existing singleton*.
%
%      CUBE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CUBE.M with the given input arguments.
%
%      CUBE('Property','Value',...) creates a new CUBE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cube_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cube_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cube

% Last Modified by GUIDE v2.5 25-Apr-2017 16:00:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cube_OpeningFcn, ...
                   'gui_OutputFcn',  @cube_OutputFcn, ...
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


% --- Executes just before cube is made visible.
function cube_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB

% varargin   command line arguments to cube (see VARARGIN)

% Choose default command line output for cube
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cube wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cube_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB


% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in w231.
function w231_Callback(hObject, eventdata, handles)
% hObject    handle to w231 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w231.BackgroundColor=handles.selectColor.BackgroundColor;



% --- Executes on button press in w131.
function w331_Callback(hObject, eventdata, handles)
% hObject    handle to w131 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w331.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in w231.
function w321_Callback(hObject, eventdata, handles)
% hObject    handle to w231 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w321.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in w131.
function w311_Callback(hObject, eventdata, handles)
% hObject    handle to w131 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w311.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in w221.
function w221_Callback(hObject, eventdata, handles)
% hObject    handle to w221 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w221.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in w231.
function w211_Callback(hObject, eventdata, handles)
% hObject    handle to w231 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w211.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in w331.
function w131_Callback(hObject, eventdata, handles)
% hObject    handle to w331 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w131.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in w231.
function w121_Callback(hObject, eventdata, handles)
% hObject    handle to w231 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w121.BackgroundColor=handles.selectColor.BackgroundColor;
 

% --- Executes on button press in solve.
function solve_Callback(hObject, eventdata, handles)
% hObject    handle to solve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
global num_turn
if handles.input.Value==1 % manual
    faces=GUIinitialize(handles);
    if handles.methods.Value==1
        faces=blindfold(faces);
        drawCube(faces,handles);
        handles.numMoves.String=['Number of moves to solve: ',num2str(num_turn)];
    else
        faces=solveWithWhiteCrossMethod(faces);
        drawCube(faces,handles);
        handles.numMoves.String=['Number of moves to solve: ',num2str(num_turn)];
    end
elseif handles.input.Value==2 % random
    initialize;
    faces=randomize(faces,30);
    changeGUI(faces,handles);
    if handles.methods.Value==1
        faces=blindfold(faces);
        drawCube(faces,handles);
        handles.numMoves.String=['Number of moves to solve: ',num2str(num_turn)];
        
    else
        faces=solveWithWhiteCrossMethod(faces);
        drawCube(faces,handles);
        handles.numMoves.String=['Number of moves to solve: ',num2str(num_turn)];
    end
else        % Image processing
    if handles.methods.Value==1
        faces=blindfold(faces);
        drawCube(faces,handles);
        handles.numMoves.String=['Number of moves to solve: ',num2str(num_turn)];
    else
        faces=solveWithWhiteCrossMethod(faces); 
        drawCube(faces,handles);
        handles.numMoves.String=['Number of moves to solve: ',num2str(num_turn)];
    end
end


% --- Executes on button press in selectColor.
function selectColor_Callback(hObject, eventdata, handles)
% hObject    handle to selectColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB

if isequal(handles.selectColor.BackgroundColor,[1,1,1])
    handles.selectColor.BackgroundColor=[1,0,0];
elseif isequal(handles.selectColor.BackgroundColor,[1,0,0])
    handles.selectColor.BackgroundColor=[1,0.7,0];
elseif isequal(handles.selectColor.BackgroundColor,[1,0.7,0])
    handles.selectColor.BackgroundColor=[1,1,0];
elseif isequal(handles.selectColor.BackgroundColor,[1,1,0])
    handles.selectColor.BackgroundColor=[0,1,0];
elseif isequal(handles.selectColor.BackgroundColor,[0,1,0])
    handles.selectColor.BackgroundColor=[0,0,1];
elseif isequal(handles.selectColor.BackgroundColor,[0,0,1])
    handles.selectColor.BackgroundColor=[1,1,1];
end

% --- Executes on selection change in methods.
function methods_Callback(hObject, eventdata, handles)
% hObject    handle to methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB


% Hints: contents = cellstr(get(hObject,'String')) returns methods contents as cell array
%        contents{get(hObject,'Value')} returns selected item from methods


% --- Executes during object creation, after setting all properties.
function methods_CreateFcn(hObject, eventdata, handles)
% hObject    handle to methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in w131.
function w111_Callback(hObject, eventdata, handles)
% hObject    handle to w131 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.w111.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g233.
function g233_Callback(hObject, eventdata, handles)
% hObject    handle to g233 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g233.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g333.
function g333_Callback(hObject, eventdata, handles)
% hObject    handle to g333 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g333.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g323.
function g323_Callback(hObject, eventdata, handles)
% hObject    handle to g323 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g323.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g313.
function g313_Callback(hObject, eventdata, handles)
% hObject    handle to g313 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g313.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g223.
function g223_Callback(hObject, eventdata, handles)
% hObject    handle to g223 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g223.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g213.
function g213_Callback(hObject, eventdata, handles)
% hObject    handle to g213 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g213.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g133.
function g133_Callback(hObject, eventdata, handles)
% hObject    chandle to g133 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g133.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g123.
function g123_Callback(hObject, eventdata, handles)
% hObject    handle to g123 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g123.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in g113.
function g113_Callback(hObject, eventdata, handles)
% hObject    handle to g113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.g113.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r322.
function r322_Callback(hObject, eventdata, handles)
% hObject    handle to r322 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r322.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r312.
function r312_Callback(hObject, eventdata, handles)
% hObject    handle to r312 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r312.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r212.
function r212_Callback(hObject, eventdata, handles)
% hObject    handle to r212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r212.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r112.
function r112_Callback(hObject, eventdata, handles)
% hObject    handle to r112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r112.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r222.
function r222_Callback(hObject, eventdata, handles)
% hObject    handle to r222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r222.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r122.
function r122_Callback(hObject, eventdata, handles)
% hObject    handle to r122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r122.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r332.
function r332_Callback(hObject, eventdata, handles)
% hObject    handle to r332 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r332.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r232.
function r232_Callback(hObject, eventdata, handles)
% hObject    handle to r232 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r232.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in r132.
function r132_Callback(hObject, eventdata, handles)
% hObject    handle to r132 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.r132.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o215.
function o215_Callback(hObject, eventdata, handles)
% hObject    handle to o215 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o215.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o115.
function o115_Callback(hObject, eventdata, handles)
% hObject    handle to o115 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o115.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o125.
function o125_Callback(hObject, eventdata, handles)
% hObject    handle to o125 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o125.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o135.
function o135_Callback(hObject, eventdata, handles)
% hObject    handle to o135 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o135.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o225.
function o225_Callback(hObject, eventdata, handles)
% hObject    handle to o225 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o225.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o235.
function o235_Callback(hObject, eventdata, handles)
% hObject    handle to o235 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o235.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o315.
function o315_Callback(hObject, eventdata, handles)
% hObject    handle to o315 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o315.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o325.
function o325_Callback(hObject, eventdata, handles)
% hObject    handle to o325 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o325.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in o335.
function o335_Callback(hObject, eventdata, handles)
% hObject    handle to o335 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.o335.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y214.
function y214_Callback(hObject, eventdata, handles)
% hObject    handle to y214 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y214.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y114.
function y114_Callback(hObject, eventdata, handles)
% hObject    handle to y114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y114.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y124.
function y124_Callback(hObject, eventdata, handles)
% hObject    handle to y124 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y124.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y134.
function y134_Callback(hObject, eventdata, handles)
% hObject    handle to y134 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y134.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y224.
function y224_Callback(hObject, eventdata, handles)
% hObject    handle to y224 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y224.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y234.
function y234_Callback(hObject, eventdata, handles)
% hObject    handle to y234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y234.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y314.
function y314_Callback(hObject, eventdata, handles)
% hObject    handle to y314 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y314.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y324.
function y324_Callback(hObject, eventdata, handles)
% hObject    handle to y324 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y324.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in y334.
function y334_Callback(hObject, eventdata, handles)
% hObject    handle to y334 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.y334.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b326.
function b326_Callback(hObject, eventdata, handles)
% hObject    handle to b326 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b326.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b316.
function b316_Callback(hObject, eventdata, handles)
% hObject    handle to b316 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b316.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b216.
function b216_Callback(hObject, eventdata, handles)
% hObject    handle to b216 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b216.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b116.
function b116_Callback(hObject, eventdata, handles)
% hObject    handle to b116 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b116.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b226.
function b226_Callback(hObject, eventdata, handles)
% hObject    handle to b226 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b226.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b126.
function b126_Callback(hObject, eventdata, handles)
% hObject    handle to b126 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b126.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b336.
function b336_Callback(hObject, eventdata, handles)
% hObject    handle to b336 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b336.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b236.
function b236_Callback(hObject, eventdata, handles)
% hObject    handle to b236 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b236.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on button press in b136.
function b136_Callback(hObject, eventdata, handles)
% hObject    handle to b136 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.b136.BackgroundColor=handles.selectColor.BackgroundColor;


% --- Executes on selection change in input.
function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns input contents as cell array
%        contents{get(hObject,'Value')} returns selected item from input


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
