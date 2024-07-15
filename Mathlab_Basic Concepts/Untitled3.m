% Script file to begin your day. Save it as Hi_there.m
% To execute, just type Hi_there
disp('Hello K.S., How is life?')
% display a blank line
disp(' ')
disp('Today is....')
% display date
disp(date)
% get time as integer
time=fix(clock);
% get the hour
hourstr=int2str(time(4));
% get the minutes
minstr=int2str(time(5));
% if minute is,say 5,then
%- write it as 05
if time(5)<10
    minstr=['0',minstr];
end
% create the time string
timex=[hourstr ':' minstr];
disp(' ')
% display the time
disp('And the time is...')
disp(timex)