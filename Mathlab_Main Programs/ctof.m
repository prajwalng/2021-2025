function temptable = ctof(tinitial,tfinal);
% CTOF : function to convert temperature from c to f
% call syntax:
%            temptable = ctof(tinitial,tfinal);
% --------------

% create a column vector C
tinitial = 0;
tfinal = 100;
C = [tinitial : tfinal]';
% compute corrsponding F
F = (9/5)*C + 32;
% make a 2 column matrix of a C & F
temptable = [C F];
end

