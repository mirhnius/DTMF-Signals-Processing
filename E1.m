[y,fs] = audioread('a.wav'); % discrete signal and its sampling frequency HERE find one DTMF period (start: sample n1, end: sample n2)
figure(1);
plot(y);
tsig = (abs(y) >0);
dsig = diff([1; tsig ;1]);
startIndex = find(dsig < 0);
endIndex = find(dsig > 0)-1;
duration = endIndex-startIndex+1;
stringIndex = (duration > 3);
startIndex = startIndex(stringIndex);
endIndex = endIndex(stringIndex);
end1=startIndex-1;
start1index=endIndex<9600;
start1=endIndex(start1index)+1;
if(y(1,1)~=0||y(2,1)~=0||y(3,1)~=0)
     start1=[1 ;start1];
end
if(length(y)<=start1(end,1))
    start1=start1(1:end-1,1);
end

flow = zeros(1,length(start1));
fhigh = zeros(1,length(start1));
for i=1:length(start1)
 n1 = start1(i);
 n2 = end1(i);
 y2 = y(n1:n2); % ON period
 n = length(y2);
 p = abs(fft(y2)); % Spectrum of signal (magnitude)
 f = (0:n-1)*(fs/n); % Frequency values of the spectrum,p

 nums = sum(f(:)<1000);
 nume = sum(f(:)<1500);
 [~,flownum]=max(p(1:nums));
 flow(i)=f(flownum);
 [~,fhighnum]=max(p(nums:nume));
 fhigh(i)=f(fhighnum+nums);
end
figure(2);
plot(y2);
decode=zeros(length(start1),2);
for i=1:length(start1)
    if(abs(flow(i)-697)<36)
        decode(i,1)=1;
    elseif(abs(flow(i)-770)<36)
              decode(i,1)=2;
    elseif(abs(flow(i)-852)<36)
              decode(i,1)=3;
    elseif(abs(flow(i)-941)<36)
              decode(i,1)=4;
    end
    if(abs(fhigh(i)-1209)<70)
        decode(i,2)=1;
    elseif(abs(fhigh(i)-1336)<70)
              decode(i,2)=2;
    elseif(abs(fhigh(i)-1477)<70)
              decode(i,2)=3;
    end
end
cmopdecode=[decode' zeros(2,6)];
dtmf_dcd = [1 1; 1 2; 1 3; 2 1; 2 2; 2 3; 3 1; 3 2; 3 3; 4 1; 4 2; 4 3];  
nbr_map = ['1' '2' '3' '4' '5' '6' '7' '8' '9' '*' '0' '#'];
num_pad=zeros(length(start1));
for k1=1:length(start1) 
  num_pad(k1) = nbr_map(ismember(dtmf_dcd,decode(k1,:), 'rows'));
end
a = char(num_pad(:,1)');