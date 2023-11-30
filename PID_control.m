function data = pid(err)
%Define function
persistent lerr
Initialise variables
if isempty(lerr)

lerr = 0;

end
persistent csum
if isempty(csum)

csum = 0;
end
p=erp*5;
%PID equivalent
i=csum*10;
d=20*(err-lerr);
if (~isequal(sign(lerr),sign(err)) || err==0)
csum=0;

end
csum=csumterr;
%Summing errors
lerr=err;
if (csum < -255)
%Applying range limits
csum = -255;

end
if (csum > 255)
csum = 255;
end
data=p+i+d;
