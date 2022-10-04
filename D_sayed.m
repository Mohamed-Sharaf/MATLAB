clear all; clc;
disp('ENTER UPLINK PARAMETERS') 
disp('---------------------------------------')
pt=input('Earth station Transmitter output power :');
lbo=input('Earth Station back-off loss : '); 
lbf=input('Earth station branching and feeder losses :'); 
at=input('Earth station Transmit antenna gain : '); 
lu=input('Additional uplink atmospheric losses : '); 
lp=input('Free-space path loss : ');
gte=input('Satellite receiver G/Te ratio : '); 
bfb=input('Satellite branching and feeder losses : '); 
br=input('Bit rate : ');

disp('---------------------------------------') 
disp('ENTER DOWNLINK PARAMETERS') 
disp('---------------------------------------')
disp('')

pt2=input('Satellite transmitter output power :'); 
lbo2=input('Satellite back-off loss : '); 
lbf2=input('Satellite branching and feeder losses :'); 
at2=input('Satellite Transmit antenna gain : '); 
ld=input('Additional downlink atmospheric losses : '); 
lp2=input('Free-space path loss : ');

gte2=input('Earth station receiver G/Te ratio : '); 
bfb2=input('Earth station branching and feeder losses : '); 
br2=input('Bit rate : ');


disp('---------------------------------------')
EIRP=pt+at-lbo-lbf; 
disp('UPLINK BUDGET')
 
disp('---------------------------------------')

%EIRP (Earth Station)
fprintf('EIRP (Earth Station) = %f dBW \n',EIRP); 
c1=EIRP-lp-lu;

%Carrier power density at the satellite antenna :
fprintf('Carrier power density at the satellite antenna = %f dBW\n',c1);

cn0=c1+gte-(10*log10(1.38*(10^(-23))));
fprintf('C/No at the satellite = %f dB\n',cn0);

ebn0=cn0-(10*log10(br)); 
fprintf('Eb/No : = %f dB\n',ebn0);

cn=ebn0-10*(log10((40*(10^6))/(br)));
fprintf('for a minimum bandwidth system, C/N = %f dB\n',cn);


disp('---------------------------------------') 
disp('DOWNLINK BUDGET')
disp('---------------------------------------')

%EIRP (satellite transponder) EIRP2=pt2+at2-lbo2-lbf2;
EIRP2=pt2+at2-lbo2-lbf2;
fprintf('EIRP (satellite transponder) = %f dBW \n',EIRP2);

c12=EIRP2-lp2-ld;

%Carrier power density at the earth station antenna :
fprintf('Carrier power density at earth station antenna = %f dBW\n',c12);

cn02=c12+gte2-(10*log10(1.38*(10^(-23))));
fprintf('C/No at the earth station receiver = %f dB\n',cn02);

ebn02=cn02-(10*log10(br2)); 
fprintf('Eb/No : = %f dB\n',ebn02);

cn2=ebn02-10*(log10((40*(10^6))/(br2)));
fprintf('for a minimum bandwidth system, C/N = %f dB\n',cn2);

a=10^(ebn0/10); 
b=10^(ebn02/10); 
ebn0all=(a*b)/(a+b); 
ebn02db=10*log10(ebn0all);
fprintf('Eb/No(overall) : = %f dB\n',ebn02db);
