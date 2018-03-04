function varargout = kiosk(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @kiosk_OpeningFcn, ...
    'gui_OutputFcn',  @kiosk_OutputFcn, ...
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
end


function kiosk_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.axes4, 'Position', [0 0 1280 720 ] );
movegui(handles.axes4,'center')

[a,map]=imread('초기화면.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

[a,map]=imread('좌석현황새로고침.png');
[r,c,d]=size(a);
x=ceil(r/414);
y=ceil(c/949);
g=a(1:x:end,1:y:end,:);
g2 = imresize(g,[120 NaN]);
set(handles.renew,'CData',g2);

set(handles.renew,'Visible','on','Fontname','고려대학교B');
set(handles.using,'Visible','on','Fontname','고려대학교B');
set(handles.usable,'Visible','off','Fontname','고려대학교B');

set(handles.hello,'Visible','off','Fontname','고려대학교B');

set(handles.booking,'Visible','off','Fontname','고려대학교B');
set(handles.chang,'Visible','off','Fontname','고려대학교B');
set(handles.RETURN,'Visible','off','Fontname','고려대학교B');
set(handles.LOGOUT,'Visible','off','Fontname','고려대학교B');

set(handles.seat_No1,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No2,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No3,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No4,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No5,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No6,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No7,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No8,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No9,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No10,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No11,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No12,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No13,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No14,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No15,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No16,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No17,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No18,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No19,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No20,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No21,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No22,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No23,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No24,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No25,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No26,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No27,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No28,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No29,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No30,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No31,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No32,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No33,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No34,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No35,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No36,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No37,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No38,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No39,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No40,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No41,'Visible','off','Fontname','고려대학교B');
set(handles.seat_No42,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob1,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob2,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob3,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob4,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob5,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob6,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob7,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob8,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob9,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob10,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob11,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob12,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob13,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob14,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob15,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob16,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob17,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob18,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob19,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob20,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob21,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob22,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob23,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob24,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob25,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob26,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob27,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob28,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob29,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob30,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob31,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob32,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob33,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob34,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob35,'Visible','off','Fontname','고려대학교B');
set(handles.seat_Nob36,'Visible','off','Fontname','고려대학교B');
set(handles.seat_400,'Visible','off','Fontname','고려대학교B');
set(handles.seat_330,'Visible','off','Fontname','고려대학교B');
set(handles.seat_300,'Visible','off','Fontname','고려대학교B');
set(handles.seat_230,'Visible','off','Fontname','고려대학교B');
set(handles.seat_200,'Visible','off','Fontname','고려대학교B');
set(handles.seat_145,'Visible','off','Fontname','고려대학교B');
set(handles.seat_130,'Visible','off','Fontname','고려대학교B');
set(handles.seat_115,'Visible','off','Fontname','고려대학교B');
set(handles.seat_100,'Visible','off','Fontname','고려대학교B');
set(handles.seat_LOGOUT,'Visible','off','Fontname','고려대학교B');
set(handles.SEAT,'Visible','off','Fontname','고려대학교B');
set(handles.changSEAT,'Visible','off','Fontname','고려대학교B');
set(handles.seat_change,'Visible','off','Fontname','고려대학교B');

set(handles.errorbase1,'Visible','off','Fontname','고려대학교B');
set(handles.errorbase2,'Visible','off','Fontname','고려대학교B');
set(handles.errorbase3,'Visible','off','Fontname','고려대학교B');
set(handles.yesbt,'Visible','off','Fontname','고려대학교B');
set(handles.nobt,'Visible','off','Fontname','고려대학교B');

handles.output = hObject;

set(hObject,'windowstyle','modal')
% 사용할 글로벌 변수들 선언
global LogID;
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global StudentStruct;
global Log;
Log = 0;

load('DataSet.mat')

guidata(hObject, handles);
end

function varargout = kiosk_OutputFcn(hObject, eventdata, handles)
global SeatArray;
global LogIndex;
global StudentID;
global CloseTime;
global SeatName;
global StudentStruct;

if strcmp(get(handles.hello,'Visible'),'off')
    SeatReturn = find((datenum(SeatArray(:,2)) < datenum(now)) & (SeatArray(:,2)~=0));
    if ~isempty(SeatReturn);
        for i=1:length(SeatReturn);
            StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
            StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;
        end
        SeatArray(SeatReturn,:) = 0;
    end
else
    global LogDate;
    SeatReturn = find((datenum(SeatArray(:,2)) < datenum(LogDate)) & (SeatArray(:,2)~=0));
    if ~isempty(SeatReturn);
        for i=1:length(SeatReturn);
            StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
            StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;
        end
        SeatArray(SeatReturn,:) = 0;
    end
end

save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');

UsedSeat = find(SeatArray(:,1)~=0);
if isempty(UsedSeat)
    UsedSeat = 0;
else
    UsedSeat = length(UsedSeat);
end
set(handles.usable,'String',length(SeatArray))
set(handles.using,'String',length(SeatArray)-UsedSeat)
set(hObject,'Position',[0 0 1280 720]);
varargout{1} = handles.output;
end


function renew_Callback(hObject, eventdata, handles)
global SeatArray;
global LogIndex;
global StudentID;
global CloseTime;
global SeatName;
global StudentStruct;

if strcmp(get(handles.hello,'Visible'),'off')
    SeatReturn = find((datenum(SeatArray(:,2)) < datenum(now)) & (SeatArray(:,2)~=0));
    if ~isempty(SeatReturn);
        for i=1:length(SeatReturn);
            StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
            StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;;
        end
        SeatArray(SeatReturn,:) = 0;
    end
else
    global LogDate;
    SeatReturn = find((datenum(SeatArray(:,2)) < datenum(LogDate)) & (SeatArray(:,2)~=0));
    if ~isempty(SeatReturn);
        for i=1:length(SeatReturn);
            StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
            StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;
        end
        SeatArray(SeatReturn,:) = 0;
    end
end
save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');

UsedSeat = find(SeatArray(:,1)~=0);
if isempty(UsedSeat)
    UsedSeat = 0;
else
    UsedSeat = length(UsedSeat);
end
set(handles.usable,'String',length(SeatArray))
set(handles.using,'String',length(SeatArray)-UsedSeat)
end


%연장하려는 로그인의 경우 string을 좌석 연장으로 바꾸게 할 예정(if문사용)
function booking_Callback(hObject, eventdata, handles)
global LogIndex;
global StudentStruct;
global SeatArray;
global SeatName;
global CloseTime;
global LogDate;

set(handles.hello,'Visible','off');

set(handles.seat_LOGOUT,'Visible','on');
set(handles.SEAT,'Visible','on');
set(handles.changSEAT,'Visible','off');
set(handles.seat_change,'Visible','off');

set(handles.booking,'Visible','off');
set(handles.chang,'Visible','off');
set(handles.RETURN,'Visible','off')
set(handles.LOGOUT,'Visible','off');
set(handles.renew,'Visible','off');
set(handles.using,'Visible','off');
set(handles.usable,'Visible','off');

[a,map]=imread('초기자리선택.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)
global ch;
ch = 0;
% 차지한 자리가 없을 때(자리배정)
if StudentStruct(LogIndex).Seat==0;
    
    if SeatArray(1,1) == 0;
        set(handles.seat_No1,'Visible','on');
    end
    if SeatArray(2,1) ==0;
        set(handles.seat_No2,'Visible','on');
    end
    if SeatArray(3,1) ==0;
        set(handles.seat_No3,'Visible','on');
    end
    if SeatArray(4,1) ==0;
        set(handles.seat_No4,'Visible','on');
    end
    if SeatArray(5,1) ==0;
        set(handles.seat_No5,'Visible','on');
    end
    if SeatArray(6,1) ==0;
        set(handles.seat_No6,'Visible','on');
    end
    if SeatArray(7,1) ==0;
        set(handles.seat_No7,'Visible','on');
    end
    if SeatArray(8,1) ==0;
        set(handles.seat_No8,'Visible','on');
    end
    if SeatArray(9,1) ==0;
        set(handles.seat_No9,'Visible','on');
    end
    if SeatArray(10,1) ==0;
        set(handles.seat_No10,'Visible','on');
    end
    if SeatArray(11,1) ==0;
        set(handles.seat_No11,'Visible','on');
    end
    if SeatArray(12,1) ==0;
        set(handles.seat_No12,'Visible','on');
    end
    if SeatArray(13,1) ==0;
        set(handles.seat_No13,'Visible','on');
    end
    if SeatArray(14,1) ==0;
        set(handles.seat_No14,'Visible','on');
    end
    if SeatArray(15,1) ==0;
        set(handles.seat_No15,'Visible','on');
    end
    if SeatArray(16,1) ==0;
        set(handles.seat_No16,'Visible','on');
    end
    if SeatArray(17,1) ==0;
        set(handles.seat_No17,'Visible','on');
    end
    if SeatArray(18,1) ==0;
        set(handles.seat_No18,'Visible','on');
    end
    if SeatArray(19,1) ==0;
        set(handles.seat_No19,'Visible','on');
    end
    if SeatArray(20,1) ==0;
        set(handles.seat_No20,'Visible','on');
    end
    if SeatArray(21,1) ==0;
        set(handles.seat_No21,'Visible','on');
    end
    if SeatArray(22,1) ==0;
        set(handles.seat_No22,'Visible','on');
    end
    if SeatArray(23,1) ==0;
        set(handles.seat_No23,'Visible','on');
    end
    if SeatArray(24,1) ==0;
        set(handles.seat_No24,'Visible','on');
    end
    if SeatArray(25,1) ==0;
        set(handles.seat_No25,'Visible','on');
    end
    if SeatArray(26,1) ==0;
        set(handles.seat_No26,'Visible','on');
    end
    if SeatArray(27,1) ==0;
        set(handles.seat_No27,'Visible','on');
    end
    if SeatArray(28,1) ==0;
        set(handles.seat_No28,'Visible','on');
    end
    if SeatArray(29,1) ==0;
        set(handles.seat_No29,'Visible','on');
    end
    if SeatArray(30,1) ==0;
        set(handles.seat_No30,'Visible','on');
    end
    if SeatArray(31,1) ==0;
        set(handles.seat_No31,'Visible','on');
    end
    if SeatArray(32,1) ==0;
        set(handles.seat_No32,'Visible','on');
    end
    if SeatArray(33,1) ==0;
        set(handles.seat_No33,'Visible','on');
    end
    if SeatArray(34,1) ==0;
        set(handles.seat_No34,'Visible','on');
    end
    if SeatArray(35,1) ==0;
        set(handles.seat_No35,'Visible','on');
    end
    if SeatArray(36,1) ==0;
        set(handles.seat_No36,'Visible','on');
    end
    if SeatArray(37,1) ==0;
        set(handles.seat_No37,'Visible','on');
    end
    if SeatArray(38,1) ==0;
        set(handles.seat_No38,'Visible','on');
    end
    if SeatArray(39,1) ==0;
        set(handles.seat_No39,'Visible','on');
    end
    if SeatArray(40,1) ==0;
        set(handles.seat_No40,'Visible','on');
    end
    if SeatArray(41,1) ==0;
        set(handles.seat_No41,'Visible','on');
    end
    if SeatArray(42,1) ==0;
        set(handles.seat_No42,'Visible','on');
    end
    if SeatArray(43,1) ==0;
        set(handles.seat_Nob1,'Visible','on');
    end
    if SeatArray(44,1) ==0;
        set(handles.seat_Nob2,'Visible','on');
    end
    if SeatArray(45,1) ==0;
        set(handles.seat_Nob3,'Visible','on');
    end
    if SeatArray(46,1) ==0;
        set(handles.seat_Nob4,'Visible','on');
    end
    if SeatArray(47,1) ==0;
        set(handles.seat_Nob5,'Visible','on');
    end
    if SeatArray(48,1) ==0;
        set(handles.seat_Nob6,'Visible','on');
    end
    if SeatArray(49,1) ==0;
        set(handles.seat_Nob7,'Visible','on');
    end
    if SeatArray(50,1) ==0;
        set(handles.seat_Nob8,'Visible','on');
    end
    if SeatArray(51,1) ==0;
        set(handles.seat_Nob9,'Visible','on');
    end
    if SeatArray(52,1) ==0;
        set(handles.seat_Nob10,'Visible','on');
    end
    if SeatArray(53,1) ==0;
        set(handles.seat_Nob11,'Visible','on');
    end
    if SeatArray(54,1) ==0;
        set(handles.seat_Nob12,'Visible','on');
    end
    if SeatArray(55,1) ==0;
        set(handles.seat_Nob13,'Visible','on');
    end
    if SeatArray(56,1) ==0;
        set(handles.seat_Nob14,'Visible','on');
    end
    if SeatArray(57,1) ==0;
        set(handles.seat_Nob15,'Visible','on');
    end
    if SeatArray(58,1) ==0;
        set(handles.seat_Nob16,'Visible','on');
    end
    if SeatArray(59,1) ==0;
        set(handles.seat_Nob17,'Visible','on');
    end
    if SeatArray(60,1) ==0;
        set(handles.seat_Nob18,'Visible','on');
    end
    if SeatArray(61,1) ==0;
        set(handles.seat_Nob19,'Visible','on');
    end
    if SeatArray(62,1) ==0;
        set(handles.seat_Nob20,'Visible','on');
    end
    if SeatArray(63,1) ==0;
        set(handles.seat_Nob21,'Visible','on');
    end
    if SeatArray(64,1) ==0;
        set(handles.seat_Nob22,'Visible','on');
    end
    if SeatArray(65,1) ==0;
        set(handles.seat_Nob23,'Visible','on');
    end
    if SeatArray(66,1) ==0;
        set(handles.seat_Nob24,'Visible','on');
    end
    if SeatArray(67,1) ==0;
        set(handles.seat_Nob25,'Visible','on');
    end
    if SeatArray(68,1) ==0;
        set(handles.seat_Nob26,'Visible','on');
    end
    if SeatArray(69,1) ==0;
        set(handles.seat_Nob27,'Visible','on');
    end
    if SeatArray(70,1) ==0;
        set(handles.seat_Nob28,'Visible','on');
    end
    if SeatArray(71,1) ==0;
        set(handles.seat_Nob29,'Visible','on');
    end
    if SeatArray(72,1) ==0;
        set(handles.seat_Nob30,'Visible','on');
    end
    if SeatArray(73,1) ==0;
        set(handles.seat_Nob31,'Visible','on');
    end
    if SeatArray(74,1) ==0;
        set(handles.seat_Nob32,'Visible','on');
    end
    if SeatArray(75,1) ==0;
        set(handles.seat_Nob33,'Visible','on');
    end
    if SeatArray(76,1) ==0;
        set(handles.seat_Nob34,'Visible','on');
    end
    if SeatArray(77,1) ==0;
        set(handles.seat_Nob35,'Visible','on');
    end
    if SeatArray(78,1) ==0;
        set(handles.seat_Nob36,'Visible','on');
    end
    
    % 차지한 자리가 있을 때 (자리 연장)
else
    
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
    
    if StudentStruct(LogIndex).Count == 1;
        set(handles.seat_400,'Visible','off');
        set(handles.seat_330,'Visible','off');
        set(handles.seat_300,'Visible','off');
        set(handles.seat_230,'Visible','off');
        
    elseif StudentStruct(LogIndex).Count == 0;
        set(handles.seat_400,'Visible','off');
        set(handles.seat_330,'Visible','off');
        set(handles.seat_300,'Visible','off');
        set(handles.seat_230,'Visible','off');
        set(handles.seat_200,'Visible','off');
        set(handles.seat_145,'Visible','off');
        set(handles.seat_130,'Visible','off');
        set(handles.seat_115,'Visible','off');
    end
    set (handles.SEAT,'String',SeatName(StudentStruct(LogIndex).Seat,:));
end
end

function chang_Callback(hObject, eventdata, handles)

global LogIndex;
global StudentStruct;
global SeatArray;
global SeatName;
global CloseTime;
global LogDate;
global ch;
ch = 1;

set(handles.hello,'Visible','off');
set(handles.seat_LOGOUT,'Visible','on');

set(handles.SEAT,'String',SeatName(StudentStruct(LogIndex).Seat,:));

set(handles.SEAT,'Visible','on');
set(handles.changSEAT,'Visible','off');
set(handles.seat_change,'Visible','off');

set(handles.booking,'Visible','off');
set(handles.chang,'Visible','off');
set(handles.RETURN,'Visible','off')
set(handles.LOGOUT,'Visible','off');
set(handles.renew,'Visible','off');
set(handles.using,'Visible','off');
set(handles.usable,'Visible','off');

[a,map]=imread('좌석변경지도.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

if SeatArray(1,1) == 0;
    set(handles.seat_No1,'Visible','on');
end
if SeatArray(2,1) ==0;
    set(handles.seat_No2,'Visible','on');
end
if SeatArray(3,1) ==0;
    set(handles.seat_No3,'Visible','on');
end
if SeatArray(4,1) ==0;
    set(handles.seat_No4,'Visible','on');
end
if SeatArray(5,1) ==0;
    set(handles.seat_No5,'Visible','on');
end
if SeatArray(6,1) ==0;
    set(handles.seat_No6,'Visible','on');
end
if SeatArray(7,1) ==0;
    set(handles.seat_No7,'Visible','on');
end
if SeatArray(8,1) ==0;
    set(handles.seat_No8,'Visible','on');
end
if SeatArray(9,1) ==0;
    set(handles.seat_No9,'Visible','on');
end
if SeatArray(10,1) ==0;
    set(handles.seat_No10,'Visible','on');
end
if SeatArray(11,1) ==0;
    set(handles.seat_No11,'Visible','on');
end
if SeatArray(12,1) ==0;
    set(handles.seat_No12,'Visible','on');
end
if SeatArray(13,1) ==0;
    set(handles.seat_No13,'Visible','on');
end
if SeatArray(14,1) ==0;
    set(handles.seat_No14,'Visible','on');
end
if SeatArray(15,1) ==0;
    set(handles.seat_No15,'Visible','on');
end
if SeatArray(16,1) ==0;
    set(handles.seat_No16,'Visible','on');
end
if SeatArray(17,1) ==0;
    set(handles.seat_No17,'Visible','on');
end
if SeatArray(18,1) ==0;
    set(handles.seat_No18,'Visible','on');
end
if SeatArray(19,1) ==0;
    set(handles.seat_No19,'Visible','on');
end
if SeatArray(20,1) ==0;
    set(handles.seat_No20,'Visible','on');
end
if SeatArray(21,1) ==0;
    set(handles.seat_No21,'Visible','on');
end
if SeatArray(22,1) ==0;
    set(handles.seat_No22,'Visible','on');
end
if SeatArray(23,1) ==0;
    set(handles.seat_No23,'Visible','on');
end
if SeatArray(24,1) ==0;
    set(handles.seat_No24,'Visible','on');
end
if SeatArray(25,1) ==0;
    set(handles.seat_No25,'Visible','on');
end
if SeatArray(26,1) ==0;
    set(handles.seat_No26,'Visible','on');
end
if SeatArray(27,1) ==0;
    set(handles.seat_No27,'Visible','on');
end
if SeatArray(28,1) ==0;
    set(handles.seat_No28,'Visible','on');
end
if SeatArray(29,1) ==0;
    set(handles.seat_No29,'Visible','on');
end
if SeatArray(30,1) ==0;
    set(handles.seat_No30,'Visible','on');
end
if SeatArray(31,1) ==0;
    set(handles.seat_No31,'Visible','on');
end
if SeatArray(32,1) ==0;
    set(handles.seat_No32,'Visible','on');
end
if SeatArray(33,1) ==0;
    set(handles.seat_No33,'Visible','on');
end
if SeatArray(34,1) ==0;
    set(handles.seat_No34,'Visible','on');
end
if SeatArray(35,1) ==0;
    set(handles.seat_No35,'Visible','on');
end
if SeatArray(36,1) ==0;
    set(handles.seat_No36,'Visible','on');
end
if SeatArray(37,1) ==0;
    set(handles.seat_No37,'Visible','on');
end
if SeatArray(38,1) ==0;
    set(handles.seat_No38,'Visible','on');
end
if SeatArray(39,1) ==0;
    set(handles.seat_No39,'Visible','on');
end
if SeatArray(40,1) ==0;
    set(handles.seat_No40,'Visible','on');
end
if SeatArray(41,1) ==0;
    set(handles.seat_No41,'Visible','on');
end
if SeatArray(42,1) ==0;
    set(handles.seat_No42,'Visible','on');
end
if SeatArray(43,1) ==0;
    set(handles.seat_Nob1,'Visible','on');
end
if SeatArray(44,1) ==0;
    set(handles.seat_Nob2,'Visible','on');
end
if SeatArray(45,1) ==0;
    set(handles.seat_Nob3,'Visible','on');
end
if SeatArray(46,1) ==0;
    set(handles.seat_Nob4,'Visible','on');
end
if SeatArray(47,1) ==0;
    set(handles.seat_Nob5,'Visible','on');
end
if SeatArray(48,1) ==0;
    set(handles.seat_Nob6,'Visible','on');
end
if SeatArray(49,1) ==0;
    set(handles.seat_Nob7,'Visible','on');
end
if SeatArray(50,1) ==0;
    set(handles.seat_Nob8,'Visible','on');
end
if SeatArray(51,1) ==0;
    set(handles.seat_Nob9,'Visible','on');
end
if SeatArray(52,1) ==0;
    set(handles.seat_Nob10,'Visible','on');
end
if SeatArray(53,1) ==0;
    set(handles.seat_Nob11,'Visible','on');
end
if SeatArray(54,1) ==0;
    set(handles.seat_Nob12,'Visible','on');
end
if SeatArray(55,1) ==0;
    set(handles.seat_Nob13,'Visible','on');
end
if SeatArray(56,1) ==0;
    set(handles.seat_Nob14,'Visible','on');
end
if SeatArray(57,1) ==0;
    set(handles.seat_Nob15,'Visible','on');
end
if SeatArray(58,1) ==0;
    set(handles.seat_Nob16,'Visible','on');
end
if SeatArray(59,1) ==0;
    set(handles.seat_Nob17,'Visible','on');
end
if SeatArray(60,1) ==0;
    set(handles.seat_Nob18,'Visible','on');
end
if SeatArray(61,1) ==0;
    set(handles.seat_Nob19,'Visible','on');
end
if SeatArray(62,1) ==0;
    set(handles.seat_Nob20,'Visible','on');
end
if SeatArray(63,1) ==0;
    set(handles.seat_Nob21,'Visible','on');
end
if SeatArray(64,1) ==0;
    set(handles.seat_Nob22,'Visible','on');
end
if SeatArray(65,1) ==0;
    set(handles.seat_Nob23,'Visible','on');
end
if SeatArray(66,1) ==0;
    set(handles.seat_Nob24,'Visible','on');
end
if SeatArray(67,1) ==0;
    set(handles.seat_Nob25,'Visible','on');
end
if SeatArray(68,1) ==0;
    set(handles.seat_Nob26,'Visible','on');
end
if SeatArray(69,1) ==0;
    set(handles.seat_Nob27,'Visible','on');
end
if SeatArray(70,1) ==0;
    set(handles.seat_Nob28,'Visible','on');
end
if SeatArray(71,1) ==0;
    set(handles.seat_Nob29,'Visible','on');
end
if SeatArray(72,1) ==0;
    set(handles.seat_Nob30,'Visible','on');
end
if SeatArray(73,1) ==0;
    set(handles.seat_Nob31,'Visible','on');
end
if SeatArray(74,1) ==0;
    set(handles.seat_Nob32,'Visible','on');
end
if SeatArray(75,1) ==0;
    set(handles.seat_Nob33,'Visible','on');
end
if SeatArray(76,1) ==0;
    set(handles.seat_Nob34,'Visible','on');
end
if SeatArray(77,1) ==0;
    set(handles.seat_Nob35,'Visible','on');
end
if SeatArray(78,1) ==0;
    set(handles.seat_Nob36,'Visible','on');
end
end

function RETURN_Callback(hObject, eventdata, handles)
global StudentID;
global LogIndex;
global StudentStruct;
global SeatArray;
global SeatName;
global CloseTime;
global LogDate;
global Log;
Log = 0;

[a,map]=imread('초기화면명단없는경우.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

bkresult='반납되었습니다';

set(handles.errorbase3,'String',bkresult);
set(handles.errorbase2,'String','');



StudentStruct(LogIndex).Count = 1;
StudentStruct(LogIndex).LogOut = datenum(now);
SeatArray(StudentStruct(LogIndex).Seat,:) = 0;
StudentStruct(LogIndex).Seat = 0;

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','off');
set(handles.nobt,'Visible','off');

set(handles.using,'Visible','off');
set(handles.usable,'Visible','off');

set(handles.booking,'Visible','off');
set(handles.chang,'Visible','off');
set(handles.RETURN,'Visible','off');
set(handles.LOGOUT,'Visible','off');
set(handles.renew,'Visible','off');

set(handles.hello,'Visible','off');

pause(3)

[a,map]=imread('초기화면.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.errorbase1,'Visible','off');
set(handles.errorbase2,'Visible','off');
set(handles.errorbase3,'Visible','off');

set(handles.using,'Visible','on');
set(handles.usable,'Visible','off');
set(handles.renew,'Visible','on');


set(handles.booking,'Visible','off');
set(handles.chang,'Visible','off');
set(handles.RETURN,'Visible','off');
set(handles.LOGOUT,'Visible','off');

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');
set(handles.seat_change,'Visible','off');
set(handles.hello,'Visible','off');

SeatReturn = find((datenum(SeatArray(:,2)) < datenum(now)) & (SeatArray(:,2)~=0));
if ~isempty(SeatReturn);
    for i=1:length(SeatReturn);
        StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
        StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;;
    end
    SeatArray(SeatReturn,:) = 0;
end


save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');

UsedSeat = find(SeatArray(:,1)~=0);
if isempty(UsedSeat)
    UsedSeat = 0;
else
    UsedSeat = length(UsedSeat);
end
set(handles.usable,'String',length(SeatArray))
set(handles.using,'String',length(SeatArray)-UsedSeat)
set(handles.SEAT,'String','');
end

function LOGOUT_Callback(hObject, eventdata, handles)

global LogIndex;
global StudentStruct;
global SeatArray;
global SeatName;
global CloseTime;
global LogDate;
global Log;
Log = 0;

[a,map]=imread('초기화면.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.using,'Visible','on');
set(handles.usable,'Visible','off');
set(handles.renew,'Visible','on');
set(handles.booking,'Visible','off');
set(handles.chang,'Visible','off');
set(handles.RETURN,'Visible','off');
set(handles.LOGOUT,'Visible','off');

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');
set(handles.seat_change,'Visible','off');

set(handles.hello,'Visible','off');

global StudentID;

SeatReturn = find((datenum(SeatArray(:,2)) < datenum(now)) & (SeatArray(:,2)~=0));
if ~isempty(SeatReturn);
    for i=1:length(SeatReturn);
        StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
        StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;;
    end
    SeatArray(SeatReturn,:) = 0;
end

save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');

UsedSeat = find(SeatArray(:,1)~=0);
if isempty(UsedSeat)
    UsedSeat = 0;
else
    UsedSeat = length(UsedSeat);
end
set(handles.usable,'String',length(SeatArray))
set(handles.using,'String',length(SeatArray)-UsedSeat)
set(handles.SEAT,'String','');
end

function seat_400_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;


global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 04:00';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 04:00');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 04:00');
end
bkresult=[get(handles.SEAT,'String'),'/4:00/',datestr(FinishTime,'HH:MM'),'종료'];
set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');
[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_330_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 03:30';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 03:30');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 03:30');
end
bkresult=[get(handles.SEAT,'String'),'/3:30/',datestr(FinishTime,'HH:MM'),'종료'];
set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_300_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 03:00';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 03:00');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 03:00');
end
bkresult=[get(handles.SEAT,'String'),'/3:00/',datestr(FinishTime,'HH:MM'),'종료'];
set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_230_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 02:30';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 02:30');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 02:30');
end
bkresult=[get(handles.SEAT,'String'),'/2:30/',datestr(FinishTime,'HH:MM'),'종료'];set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_200_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 02:00';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 02:00');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 02:00');
end
bkresult=[get(handles.SEAT,'String'),'/2:00/',datestr(FinishTime,'HH:MM'),'종료'];
set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','배정하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_145_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 01:45';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 01:45');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 01:45');
end
bkresult=[get(handles.SEAT,'String'),'/1:45/',datestr(FinishTime,'HH:MM'),'종료'];
set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_130_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 01:30';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 01:30');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 01:30');
end
bkresult=[get(handles.SEAT,'String'),'/1:30/',datestr(FinishTime,'HH:MM'),'종료'];
set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_115_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 01:15';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 01:15');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 01:15');
end
bkresult=[get(handles.SEAT,'String'),'/1:15/',datestr(FinishTime,'HH:MM'),'종료'];set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_100_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global SeatIndex;
global FinishTime;
global SelectTime;
SelectTime = '00-00-0000 01:00';
SeatIndex = strmatch(get(handles.SEAT,'String'),SeatName,'exact');
if StudentStruct(LogIndex).Seat ==0;
    FinishTime = datenum(LogDate)+ datenum('00-00-0000 01:00');
else
    FinishTime = datenum(StudentStruct(LogIndex).LogOut)+ datenum('00-00-0000 01:00');
end
bkresult=[get(handles.SEAT,'String'),'/1:00/',datestr(FinishTime,'HH:MM'),'종료'];
set(handles.errorbase2,'String',bkresult);
set(handles.errorbase3,'String','예약하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end

function seat_LOGOUT_Callback(hObject, eventdata, handles)


global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global Log;
Log = 0;

[a,map]=imread('초기화면.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.using,'Visible','on');
set(handles.usable,'Visible','off');
set(handles.renew,'Visible','on');

set(handles.booking,'Visible','off');
set(handles.chang,'Visible','off');
set(handles.RETURN,'Visible','off');
set(handles.LOGOUT,'Visible','off');

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');
set(handles.seat_change,'Visible','off');

set(handles.hello,'Visible','off');



SeatReturn = find((datenum(SeatArray(:,2)) < datenum(now)) & (SeatArray(:,2)~=0));
if ~isempty(SeatReturn);
    for i=1:length(SeatReturn);
        StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
        StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;
    end
    SeatArray(SeatReturn,:) = 0;
end


save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');

UsedSeat = find(SeatArray(:,1)~=0);
if isempty(UsedSeat)
    UsedSeat = 0;
else
    UsedSeat = length(UsedSeat);
end

set(handles.usable,'String',length(SeatArray))
set(handles.using,'String',length(SeatArray)-UsedSeat)
set(handles.SEAT,'String','');
end

function seat_No1_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end


if ch==0;
    
    s=get(handles.seat_No1,'String');
    set(handles.SEAT,'String',s);
    
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No1,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No2_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end

if ch==0;
    
    s=get(handles.seat_No2,'String');
    set(handles.SEAT,'String',s);
    
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No2,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No3_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end

if ch==0;
    
    s=get(handles.seat_No3,'String');
    set(handles.SEAT,'String',s);
    
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No3,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No4_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No4,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No4,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No5_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No5,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No5,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No6_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No6,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No6,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No7_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No7,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No7,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No8_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No8,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No8,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No9_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No9,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No9,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No10_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;

global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No10,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No10,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No11_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;

global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No11,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No11,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No12_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;

global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No12,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No12,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No13_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No13,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No13,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No14_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No14,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No14,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No15_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No15,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No15,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No16_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No16,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No16,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No17_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No17,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No17,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No18_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No18,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No18,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No19_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No19,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No19,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No20_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No20,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No20,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No21_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No21,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No21,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No22_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No22,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No22,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No23_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No23,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No23,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No24_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No24,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No24,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No25_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No25,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No25,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No26_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No26,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No26,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No27_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No27,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No27,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No28_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No28,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No28,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No29_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No29,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No29,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No30_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No30,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No30,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No31_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No31,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No31,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No32_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No32,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No32,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No33_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No33,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No33,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No34_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No34,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No34,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No35_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No35,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No35,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No36_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No36,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No36,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No37_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No37,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No37,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No38_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No38,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No38,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No39_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No39,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No39,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No40_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No40,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No40,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No41_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No41,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No41,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_No42_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_No42,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_No42,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob1_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob1,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob1,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob2_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob2,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob2,'String');
    set(handles.changSEAT,'String',s);
    
end
end


function seat_Nob3_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob3,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob3,'String');
    set(handles.changSEAT,'String',s);
    
end
end


function seat_Nob4_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob4,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob4,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob5_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob5,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob5,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob6_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob6,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob6,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob7_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob7,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob7,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob8_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob8,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob8,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob9_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob9,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob9,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob10_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob10,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob10,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob11_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob11,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob11,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob12_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob12,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob12,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob13_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob13,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob13,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob14_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob14,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob14,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob15_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob15,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob15,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob16_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob16,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob16,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob17_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob17,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob17,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob18_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob18,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob18,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob19_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob19,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob19,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob20_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob20,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob20,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob21_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob21,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob21,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob22_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob22,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob22,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob23_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob23,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob23,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob24_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob24,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob24,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob25_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob25,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob25,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob26_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob26,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob26,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob27_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob27,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob27,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob28_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob28,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob28,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob29_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob29,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob29,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob30_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob30,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob30,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob31_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob31,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob31,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob32_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob32,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob32,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob33_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob33,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob33,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob34_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob34,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob34,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob35_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob35,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob35,'String');
    set(handles.changSEAT,'String',s);
    
end
end

function seat_Nob36_Callback(hObject, eventdata, handles)
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
if ch~=1;
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(LogDate,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
end
if ch==0;
    
    s=get(handles.seat_Nob36,'String');
    set(handles.SEAT,'String',s);
    
else
    
    set(handles.seat_change,'Visible','on');
    set(handles.changSEAT,'Visible','on');
    s=get(handles.seat_Nob36,'String');
    set(handles.changSEAT,'String',s);
    
end
end


function yesbt_Callback(hObject, eventdata, handles)

global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global ch;
global StudentStruct;
global SeatIndex;
global Log;
Log = 0;

[a,map]=imread('초기화면명단없는경우.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)
if ch==0
    bkresult='배정되었습니다';
else
    bkresult='변경되었습니다';
end

set(handles.errorbase3,'String',bkresult);
set(handles.errorbase2,'String','');

set(handles.yesbt,'Visible','off');
set(handles.nobt,'Visible','off');
set(handles.using,'Visible','off');
set(handles.usable,'Visible','off');
set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.renew,'Visible','off');

%%시간 배정칸%%%
if ch==0;
    global SelectTime;
    if StudentStruct(LogIndex).Seat ==0;
        StudentStruct(LogIndex).LogOut = datenum(LogDate)+datenum(SelectTime);
        SeatArray(SeatIndex,1) = LogIndex;
        SeatArray(SeatIndex,2) = datenum(LogDate)+datenum(SelectTime);
        
        StudentStruct(LogIndex).Seat = SeatIndex;
    else
        StudentStruct(LogIndex).LogOut = datenum(StudentStruct(LogIndex).LogOut)+datenum(SelectTime);
        SeatArray(SeatIndex,2) = StudentStruct(LogIndex).LogOut;
        StudentStruct(LogIndex).Count =StudentStruct(LogIndex).Count - 1;
    end
else
    SeatArray(SeatIndex,1) = LogIndex;
    SeatArray(SeatIndex,2) = StudentStruct(LogIndex).LogOut;
    SeatArray(StudentStruct(LogIndex).Seat,:)=0;
    StudentStruct(LogIndex).Seat = SeatIndex;
end

set(handles.errorbase3,'Visible','on');


pause(2)

%%%%%%%%%%%%%%%%%%%%%돌아가기%%%
[a,map]=imread('초기화면.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.using,'Visible','on');
set(handles.usable,'Visible','off');
set(handles.renew,'Visible','on');

set(handles.booking,'Visible','off');
set(handles.chang,'Visible','off');
set(handles.RETURN,'Visible','off');
set(handles.LOGOUT,'Visible','off');

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');

set(handles.hello,'Visible','off');

set(handles.errorbase1,'Visible','off');
set(handles.errorbase2,'Visible','off');
set(handles.errorbase3,'Visible','off');
set(handles.yesbt,'Visible','off');
set(handles.nobt,'Visible','off');

%%%%좌석현황 새로고침%%%%
SeatReturn = find((datenum(SeatArray(:,2)) < datenum(now)) & (SeatArray(:,2)~=0));
if ~isempty(SeatReturn);
    for i=1:length(SeatReturn);
        StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
        StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;;
    end
    SeatArray(SeatReturn,:) = 0;
end


save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');

UsedSeat = find(SeatArray(:,1)~=0);
if isempty(UsedSeat)
    UsedSeat = 0;
else
    UsedSeat = length(UsedSeat);
end
set(handles.usable,'String',length(SeatArray))
set(handles.using,'String',length(SeatArray)-UsedSeat)

set(handles.SEAT,'String','');



end

function nobt_Callback(hObject, eventdata, handles)
global ch;
global LogIndex;
global SeatArray;
global StudentID;
global CloseTime;
global SeatName;
global LogDate;
global StudentStruct;

if ch==1
    set(handles.changSEAT,'Visible','on');
    [a,map]=imread('좌석변경지도.png');
    [r,c,d]=size(a);
    x=ceil(c/3840);
    y=ceil(r/2160);
    g=a(1:x:end,1:y:end,:);
    reg = imresize(g,[3840 NaN]);
    imshow(reg)
else
    [a,map]=imread('초기자리선택.png');
    [r,c,d]=size(a);
    x=ceil(c/3840);
    y=ceil(r/2160);
    g=a(1:x:end,1:y:end,:);
    reg = imresize(g,[3840 NaN]);
    imshow(reg)
end

set(handles.hello,'Visible','off');
% 첫배정/자리이동
if (StudentStruct(LogIndex).Seat ==0)||(ch~=0);
    
    if SeatArray(1,1) == 0;
        set(handles.seat_No1,'Visible','on');
    end
    if SeatArray(2,1) ==0;
        set(handles.seat_No2,'Visible','on');
    end
    if SeatArray(3,1) ==0;
        set(handles.seat_No3,'Visible','on');
    end
    if SeatArray(4,1) ==0;
        set(handles.seat_No4,'Visible','on');
    end
    if SeatArray(5,1) ==0;
        set(handles.seat_No5,'Visible','on');
    end
    if SeatArray(6,1) ==0;
        set(handles.seat_No6,'Visible','on');
    end
    if SeatArray(7,1) ==0;
        set(handles.seat_No7,'Visible','on');
    end
    if SeatArray(8,1) ==0;
        set(handles.seat_No8,'Visible','on');
    end
    if SeatArray(9,1) ==0;
        set(handles.seat_No9,'Visible','on');
    end
    if SeatArray(10,1) ==0;
        set(handles.seat_No10,'Visible','on');
    end
    if SeatArray(11,1) ==0;
        set(handles.seat_No11,'Visible','on');
    end
    if SeatArray(12,1) ==0;
        set(handles.seat_No12,'Visible','on');
    end
    if SeatArray(13,1) ==0;
        set(handles.seat_No13,'Visible','on');
    end
    if SeatArray(14,1) ==0;
        set(handles.seat_No14,'Visible','on');
    end
    if SeatArray(15,1) ==0;
        set(handles.seat_No15,'Visible','on');
    end
    if SeatArray(16,1) ==0;
        set(handles.seat_No16,'Visible','on');
    end
    if SeatArray(17,1) ==0;
        set(handles.seat_No17,'Visible','on');
    end
    if SeatArray(18,1) ==0;
        set(handles.seat_No18,'Visible','on');
    end
    if SeatArray(19,1) ==0;
        set(handles.seat_No19,'Visible','on');
    end
    if SeatArray(20,1) ==0;
        set(handles.seat_No20,'Visible','on');
    end
    if SeatArray(21,1) ==0;
        set(handles.seat_No21,'Visible','on');
    end
    if SeatArray(22,1) ==0;
        set(handles.seat_No22,'Visible','on');
    end
    if SeatArray(23,1) ==0;
        set(handles.seat_No23,'Visible','on');
    end
    if SeatArray(24,1) ==0;
        set(handles.seat_No24,'Visible','on');
    end
    if SeatArray(25,1) ==0;
        set(handles.seat_No25,'Visible','on');
    end
    if SeatArray(26,1) ==0;
        set(handles.seat_No26,'Visible','on');
    end
    if SeatArray(27,1) ==0;
        set(handles.seat_No27,'Visible','on');
    end
    if SeatArray(28,1) ==0;
        set(handles.seat_No28,'Visible','on');
    end
    if SeatArray(29,1) ==0;
        set(handles.seat_No29,'Visible','on');
    end
    if SeatArray(30,1) ==0;
        set(handles.seat_No30,'Visible','on');
    end
    if SeatArray(31,1) ==0;
        set(handles.seat_No31,'Visible','on');
    end
    if SeatArray(32,1) ==0;
        set(handles.seat_No32,'Visible','on');
    end
    if SeatArray(33,1) ==0;
        set(handles.seat_No33,'Visible','on');
    end
    if SeatArray(34,1) ==0;
        set(handles.seat_No34,'Visible','on');
    end
    if SeatArray(35,1) ==0;
        set(handles.seat_No35,'Visible','on');
    end
    if SeatArray(36,1) ==0;
        set(handles.seat_No36,'Visible','on');
    end
    if SeatArray(37,1) ==0;
        set(handles.seat_No37,'Visible','on');
    end
    if SeatArray(38,1) ==0;
        set(handles.seat_No38,'Visible','on');
    end
    if SeatArray(39,1) ==0;
        set(handles.seat_No39,'Visible','on');
    end
    if SeatArray(40,1) ==0;
        set(handles.seat_No40,'Visible','on');
    end
    if SeatArray(41,1) ==0;
        set(handles.seat_No41,'Visible','on');
    end
    if SeatArray(42,1) ==0;
        set(handles.seat_No42,'Visible','on');
    end
    if SeatArray(43,1) ==0;
        set(handles.seat_Nob1,'Visible','on');
    end
    if SeatArray(44,1) ==0;
        set(handles.seat_Nob2,'Visible','on');
    end
    if SeatArray(45,1) ==0;
        set(handles.seat_Nob3,'Visible','on');
    end
    if SeatArray(46,1) ==0;
        set(handles.seat_Nob4,'Visible','on');
    end
    if SeatArray(47,1) ==0;
        set(handles.seat_Nob5,'Visible','on');
    end
    if SeatArray(48,1) ==0;
        set(handles.seat_Nob6,'Visible','on');
    end
    if SeatArray(49,1) ==0;
        set(handles.seat_Nob7,'Visible','on');
    end
    if SeatArray(50,1) ==0;
        set(handles.seat_Nob8,'Visible','on');
    end
    if SeatArray(51,1) ==0;
        set(handles.seat_Nob9,'Visible','on');
    end
    if SeatArray(52,1) ==0;
        set(handles.seat_Nob10,'Visible','on');
    end
    if SeatArray(53,1) ==0;
        set(handles.seat_Nob11,'Visible','on');
    end
    if SeatArray(54,1) ==0;
        set(handles.seat_Nob12,'Visible','on');
    end
    if SeatArray(55,1) ==0;
        set(handles.seat_Nob13,'Visible','on');
    end
    if SeatArray(56,1) ==0;
        set(handles.seat_Nob14,'Visible','on');
    end
    if SeatArray(57,1) ==0;
        set(handles.seat_Nob15,'Visible','on');
    end
    if SeatArray(58,1) ==0;
        set(handles.seat_Nob16,'Visible','on');
    end
    if SeatArray(59,1) ==0;
        set(handles.seat_Nob17,'Visible','on');
    end
    if SeatArray(60,1) ==0;
        set(handles.seat_Nob18,'Visible','on');
    end
    if SeatArray(61,1) ==0;
        set(handles.seat_Nob19,'Visible','on');
    end
    if SeatArray(62,1) ==0;
        set(handles.seat_Nob20,'Visible','on');
    end
    if SeatArray(63,1) ==0;
        set(handles.seat_Nob21,'Visible','on');
    end
    if SeatArray(64,1) ==0;
        set(handles.seat_Nob22,'Visible','on');
    end
    if SeatArray(65,1) ==0;
        set(handles.seat_Nob23,'Visible','on');
    end
    if SeatArray(66,1) ==0;
        set(handles.seat_Nob24,'Visible','on');
    end
    if SeatArray(67,1) ==0;
        set(handles.seat_Nob25,'Visible','on');
    end
    if SeatArray(68,1) ==0;
        set(handles.seat_Nob26,'Visible','on');
    end
    if SeatArray(69,1) ==0;
        set(handles.seat_Nob27,'Visible','on');
    end
    if SeatArray(70,1) ==0;
        set(handles.seat_Nob28,'Visible','on');
    end
    if SeatArray(71,1) ==0;
        set(handles.seat_Nob29,'Visible','on');
    end
    if SeatArray(72,1) ==0;
        set(handles.seat_Nob30,'Visible','on');
    end
    if SeatArray(73,1) ==0;
        set(handles.seat_Nob31,'Visible','on');
    end
    if SeatArray(74,1) ==0;
        set(handles.seat_Nob32,'Visible','on');
    end
    if SeatArray(75,1) ==0;
        set(handles.seat_Nob33,'Visible','on');
    end
    if SeatArray(76,1) ==0;
        set(handles.seat_Nob34,'Visible','on');
    end
    if SeatArray(77,1) ==0;
        set(handles.seat_Nob35,'Visible','on');
    end
    if SeatArray(78,1) ==0;
        set(handles.seat_Nob36,'Visible','on');
    end
    
    % 차지한 자리가 있을 때 (자리 연장)
else
    
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 04:00'));
        set(handles.seat_400,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:30'));
        set(handles.seat_330,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 03:00'));
        set(handles.seat_300,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:30'));
        set(handles.seat_230,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 02:00'));
        set(handles.seat_200,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:45'));
        set(handles.seat_145,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:30'));
        set(handles.seat_130,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:15'));
        set(handles.seat_115,'Visible','on');
    end
    if datenum(datestr(StudentStruct(LogIndex).LogOut,'HH:MM')) <= (datenum(CloseTime) - datenum('00-00-0000 01:00'));
        set(handles.seat_100,'Visible','on');
    end
    
    if StudentStruct(LogIndex).Count == 1;
        set(handles.seat_400,'Visible','off');
        set(handles.seat_330,'Visible','off');
        set(handles.seat_300,'Visible','off');
        set(handles.seat_230,'Visible','off');
        
    elseif StudentStruct(LogIndex).Count == 0;
        set(handles.seat_400,'Visible','off');
        set(handles.seat_330,'Visible','off');
        set(handles.seat_300,'Visible','off');
        set(handles.seat_230,'Visible','off');
        set(handles.seat_200,'Visible','off');
        set(handles.seat_145,'Visible','off');
        set(handles.seat_130,'Visible','off');
        set(handles.seat_115,'Visible','off');
    end
    set (handles.SEAT,'String',SeatName(StudentStruct(LogIndex).Seat,:));
end
set(handles.seat_LOGOUT,'Visible','on');
set(handles.SEAT,'Visible','on');

set(handles.booking,'Visible','off');
set(handles.LOGOUT,'Visible','off');
set(handles.renew,'Visible','off');
set(handles.using,'Visible','off');
set(handles.usable,'Visible','off');

set(handles.errorbase1,'Visible','off');
set(handles.errorbase2,'Visible','off');
set(handles.errorbase3,'Visible','off');
set(handles.yesbt,'Visible','off');
set(handles.nobt,'Visible','off');

end

function seat_change_Callback(hObject, eventdata, handles)
global SeatIndex;
global SeatName;
SeatIndex = strmatch(get(handles.changSEAT,'String'),SeatName,'exact');

csh=[get(handles.SEAT,'String') ,' -> ', get(handles.changSEAT,'String')  ];
set(handles.errorbase2,'String',csh);
set(handles.errorbase3,'String','변경하시겠습니까?');

[a,map]=imread('시간선택후.png');
[r,c,d]=size(a);
x=ceil(c/3840);
y=ceil(r/2160);
g=a(1:x:end,1:y:end,:);
reg = imresize(g,[3840 NaN]);
imshow(reg)

set(handles.seat_No1,'Visible','off');
set(handles.seat_No2,'Visible','off');
set(handles.seat_No3,'Visible','off');
set(handles.seat_No4,'Visible','off');
set(handles.seat_No5,'Visible','off');
set(handles.seat_No6,'Visible','off');
set(handles.seat_No7,'Visible','off');
set(handles.seat_No8,'Visible','off');
set(handles.seat_No9,'Visible','off');
set(handles.seat_No10,'Visible','off');
set(handles.seat_No11,'Visible','off');
set(handles.seat_No12,'Visible','off');
set(handles.seat_No13,'Visible','off');
set(handles.seat_No14,'Visible','off');
set(handles.seat_No15,'Visible','off');
set(handles.seat_No16,'Visible','off');
set(handles.seat_No17,'Visible','off');
set(handles.seat_No18,'Visible','off');
set(handles.seat_No19,'Visible','off');
set(handles.seat_No20,'Visible','off');
set(handles.seat_No21,'Visible','off');
set(handles.seat_No22,'Visible','off');
set(handles.seat_No23,'Visible','off');
set(handles.seat_No24,'Visible','off');
set(handles.seat_No25,'Visible','off');
set(handles.seat_No26,'Visible','off');
set(handles.seat_No27,'Visible','off');
set(handles.seat_No28,'Visible','off');
set(handles.seat_No29,'Visible','off');
set(handles.seat_No30,'Visible','off');
set(handles.seat_No31,'Visible','off');
set(handles.seat_No32,'Visible','off');
set(handles.seat_No33,'Visible','off');
set(handles.seat_No34,'Visible','off');
set(handles.seat_No35,'Visible','off');
set(handles.seat_No36,'Visible','off');
set(handles.seat_No37,'Visible','off');
set(handles.seat_No38,'Visible','off');
set(handles.seat_No39,'Visible','off');
set(handles.seat_No40,'Visible','off');
set(handles.seat_No41,'Visible','off');
set(handles.seat_No42,'Visible','off');
set(handles.seat_Nob1,'Visible','off');
set(handles.seat_Nob2,'Visible','off');
set(handles.seat_Nob3,'Visible','off');
set(handles.seat_Nob4,'Visible','off');
set(handles.seat_Nob5,'Visible','off');
set(handles.seat_Nob6,'Visible','off');
set(handles.seat_Nob7,'Visible','off');
set(handles.seat_Nob8,'Visible','off');
set(handles.seat_Nob9,'Visible','off');
set(handles.seat_Nob10,'Visible','off');
set(handles.seat_Nob11,'Visible','off');
set(handles.seat_Nob12,'Visible','off');
set(handles.seat_Nob13,'Visible','off');
set(handles.seat_Nob14,'Visible','off');
set(handles.seat_Nob15,'Visible','off');
set(handles.seat_Nob16,'Visible','off');
set(handles.seat_Nob17,'Visible','off');
set(handles.seat_Nob18,'Visible','off');
set(handles.seat_Nob19,'Visible','off');
set(handles.seat_Nob20,'Visible','off');
set(handles.seat_Nob21,'Visible','off');
set(handles.seat_Nob22,'Visible','off');
set(handles.seat_Nob23,'Visible','off');
set(handles.seat_Nob24,'Visible','off');
set(handles.seat_Nob25,'Visible','off');
set(handles.seat_Nob26,'Visible','off');
set(handles.seat_Nob27,'Visible','off');
set(handles.seat_Nob28,'Visible','off');
set(handles.seat_Nob29,'Visible','off');
set(handles.seat_Nob30,'Visible','off');
set(handles.seat_Nob31,'Visible','off');
set(handles.seat_Nob32,'Visible','off');
set(handles.seat_Nob33,'Visible','off');
set(handles.seat_Nob34,'Visible','off');
set(handles.seat_Nob35,'Visible','off');
set(handles.seat_Nob36,'Visible','off');

set(handles.seat_400,'Visible','off');
set(handles.seat_330,'Visible','off');
set(handles.seat_300,'Visible','off');
set(handles.seat_230,'Visible','off');
set(handles.seat_200,'Visible','off');
set(handles.seat_145,'Visible','off');
set(handles.seat_130,'Visible','off');
set(handles.seat_115,'Visible','off');
set(handles.seat_100,'Visible','off');
set(handles.seat_LOGOUT,'Visible','off');
set(handles.SEAT,'Visible','off');
set(handles.changSEAT,'Visible','off');
set(handles.seat_change,'Visible','off');

set(handles.errorbase1,'Visible','on');
set(handles.errorbase2,'Visible','on');
set(handles.errorbase3,'Visible','on');
set(handles.yesbt,'Visible','on');
set(handles.nobt,'Visible','on');
end



function figure1_WindowKeyPressFcn(hObject, eventdata, handles)

global LogID;
global StudentID;
global LogIndex;
global CloseTime;
global StudentStruct;
global SeatName;
global SeatArray;
global Log;

if Log == 0;
    keycode = double(get(handles.figure1,'CurrentCharacter'));
    if (keycode == 13);
        if length(LogID)~=12;
            clear global LogID;
            return;
        end
        LogID = num2str(LogID-48);
        LogID = LogID(LogID~=' ');
        LogID = LogID([2:5,7:8,10:11]);
        LogIDtemp = LogID;
        
        
        
        LogID(LogIDtemp=='0') = '2';
        LogID(LogIDtemp=='1') = '8';
        LogID(LogIDtemp=='2') = '3';
        LogID(LogIDtemp=='3') = '0';
        LogID(LogIDtemp=='4') = '5';
        LogID(LogIDtemp=='5') = '1';
        LogID(LogIDtemp=='6') = '9';
        LogID(LogIDtemp=='7') = '7';
        LogID(LogIDtemp=='8') = '4';
        LogID(LogIDtemp=='9') = '6';
        LogIDtemp = LogID;
        LogID([1,2,3,4,5,6,7,8]) = LogIDtemp([2,5,3,8,1,7,6,4]);
        LogID = ['20',LogID];
        
        
        
        LogIndex=strmatch(LogID,StudentID,'exact');
        
        if isempty(LogIndex);
            [a,map]=imread('초기화면명단없는경우.png');
            [r,c,d]=size(a);
            x=ceil(c/3840);
            y=ceil(r/2160);
            g=a(1:x:end,1:y:end,:);
            reg = imresize(g,[3840 NaN]);
            imshow(reg)
            
            bkresult='등록되지 않은 바코드';
            clear global LogID;
            set(handles.errorbase3,'String',bkresult);
            set(handles.errorbase2,'String','');
            
            set(handles.errorbase1,'Visible','on');
            set(handles.errorbase2,'Visible','on');
            set(handles.errorbase3,'Visible','on');
            set(handles.yesbt,'Visible','off');
            set(handles.nobt,'Visible','off');
            set(handles.using,'Visible','off');
            set(handles.usable,'Visible','off');
            
            set(handles.renew,'Visible','off');
            
            pause(2)
            
            set(handles.errorbase1,'Visible','off');
            set(handles.errorbase2,'Visible','off');
            set(handles.errorbase3,'Visible','off');
            set(handles.using,'Visible','on');
            
            set(handles.renew,'Visible','on');
            clear student_ID
            clear order
            clear s
            [a,map]=imread('초기화면.png');
            [r,c,d]=size(a);
            x=ceil(c/3840);
            y=ceil(r/2160);
            g=a(1:x:end,1:y:end,:);
            reg = imresize(g,[3840 NaN]);
            imshow(reg)
            
            
            [a,map]=imread('좌석현황새로고침.png');
            [r,c,d]=size(a);
            x=ceil(r/414);
            y=ceil(c/949);
            g=a(1:x:end,1:y:end,:);
            g2 = imresize(g,[160 NaN]);
            set(handles.renew,'CData',g2);
            
            [a,map]=imread('버튼기본.png');
            [r,c,d]=size(a);
            x=ceil(r/414);
            y=ceil(c/949);
            g=a(1:x:end,1:y:end,:);
            g = imresize(g,[160 NaN]);
            
            set(handles.booking,'CData',g);
            set(handles.chang,'CData',g);
            set(handles.RETURN,'CData',g);
            set(handles.LOGOUT,'CData',g);
            
            set(handles.using,'Visible','on');
            set(handles.usable,'Visible','off');
            set(handles.renew,'Visible','on');
            
            set(handles.booking,'Visible','off');
            set(handles.chang,'Visible','off');
            set(handles.RETURN,'Visible','off');
            set(handles.LOGOUT,'Visible','off');
            
            global SeatArray;
            
            SeatReturn = find((datenum(SeatArray(:,2)) < datenum(now)) & (SeatArray(:,2)~=0));
            if ~isempty(SeatReturn);
                for i=1:length(SeatReturn);
                    StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
                    StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;
                end
                SeatArray(SeatReturn,:) = 0;
            end
            save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');
            
            UsedSeat = find(SeatArray(:,1)~=0);
            if isempty(UsedSeat)
                UsedSeat = 0;
            else
                UsedSeat = length(UsedSeat);
            end
            set(handles.usable,'String',length(SeatArray))
            set(handles.using,'String',length(SeatArray)-UsedSeat)
            
        else
            global LogDate;
            Log = 1;
            
            LogDate = datenum(now);
            
            [a,map]=imread('로그인후.png');
            [r,c,d]=size(a);
            x=ceil(c/3840);
            y=ceil(r/2160);
            g=a(1:x:end,1:y:end,:);
            reg = imresize(g,[3840 NaN]);
            imshow(reg)
            
            % 자리가 이미 있는 경우
            if StudentStruct(LogIndex).Seat~=0;
                
                name=[StudentStruct(LogIndex).Name,'/',SeatName(StudentStruct(LogIndex).Seat,:),'/', datestr(StudentStruct(LogIndex).LogOut,'HH:MM'),' 종료'];
                set(handles.hello,'String',name);
                set(handles.hello,'Visible','on');
                set(handles.renew,'Visible','on');
                
                
                % 잔여시간 30분 미만
                if datenum(LogDate) >= (datenum(StudentStruct(LogIndex).LogOut) - datenum('00-00-0000 00:30'))
                    if StudentStruct(LogIndex).Count >= 0;
                        set(handles.booking,'String','좌석 연장');
                        set(handles.booking,'Visible','on');
                    end
                else
                    set(handles.booking,'String','좌석 배정');
                    set(handles.booking,'Visible','off');
                end
                
                set(handles.chang,'Visible','on');
                set(handles.RETURN,'Visible','on');
                set(handles.LOGOUT,'Visible','on');
                
            else
                name=[StudentStruct(LogIndex).Name,'님 환영합니다.'];
                set(handles.hello,'String',name);
                set(handles.hello,'Visible','on');
                set(handles.renew,'Visible','on');
                
                set(handles.booking,'String','좌석 배정');
                if datenum(LogDate) <= (datenum(StudentStruct(LogIndex).LogOut) + datenum('00-00-0000 00:03'))
                    set(handles.booking,'Visible','off');
                else
                    set(handles.booking,'Visible','on');
                end
                set(handles.chang,'Visible','off');
                
                set(handles.RETURN,'Visible','off');
                set(handles.LOGOUT,'Visible','on');
            end
            
            
            SeatReturn = find((datenum(SeatArray(:,2)) < datenum(LogDate)) & (SeatArray(:,2)~=0));
            if ~isempty(SeatReturn);
                for i=1:length(SeatReturn);
                    StudentStruct(SeatArray(SeatReturn(i),1)).Count = 1;
                    StudentStruct(SeatArray(SeatReturn(i),1)).Seat = 0;
                end
                SeatArray(SeatReturn,:) = 0;
            end
            
            save('DataSet.mat','StudentStruct','SeatArray','StudentID','CloseTime','SeatName');
            
            UsedSeat = find(SeatArray(:,1)~=0);
            if isempty(UsedSeat)
                UsedSeat = 0;
            else
                UsedSeat = length(UsedSeat);
            end
            set(handles.usable,'String',length(SeatArray))
            set(handles.using,'String',length(SeatArray)-UsedSeat)
        end
        
        clear global LogID;
        
    else
        
        global LogID;
        LogID = [LogID, keycode];
        
    end
end
end
