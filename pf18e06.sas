*pf18e06;

%macro where(state);
	%if &state=OR
		%then %put Oregon;
		%else %put Wherever;
%mend where;

%where(CA)
