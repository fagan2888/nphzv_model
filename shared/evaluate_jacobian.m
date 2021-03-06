function J = evaluate_jacobian(den,x);
muh=x(1);
kon=x(2);
epsh=x(3);
muc=x(4);
kinc=x(5);
mue=x(6);
kine=x(7);
phivh=x(8);
phivc=x(9);
phive=x(10);
betah=x(11);
betac=x(12);
betae=x(13);
mvh=x(14);
mvc=x(15);
mve=x(16);
psizh=x(17);
psizc=x(18);
psize=x(19);
pg=x(20);
pon=x(21);
pin=1-x(21)-x(20);
mz=x(23);
mzp=x(24);
pex=x(25);
omega=x(26);
xsub=x(27);
qh=x(28);
qc=x(29);
qe=x(30);
qz=x(31);
qv=x(32);
minH=x(33);
minC=x(34);
minE=x(35);
monH=x(36);
monC=x(37);
monE=x(38);

H = den(1);
C1 = den(2);
E1 = den(3);
Z =den(4);
Vh = den(5);
Vc = den(6);
Ve = den(7);
xon = den(8);
xin =den(9);

J=[(-1).*minH+(-1).*monH+(-1).*phivh.*Vh+muh.*xon.*(kon+xon).^(-1)+( ...
  ...
   -1).*psizh.*Z,0,0,(-1).*H.*psizh,(-1).*H.*phivh,0,0,(-1).*H.*muh.*  ...
  ...
  xon.*(kon+xon).^(-2)+H.*muh.*(kon+xon).^(-1),0;0,(-1).*minC+(-1).* ...
   ...
  monC+(-1).*phivc.*Vc+muc.*xin.*(kinc+xin).^(-1)+(-1).*psizc.*Z,0, ...
  ( ...
  -1).*C1.*psizc,0,(-1).*C1.*phivc,0,0,(-1).*C1.*muc.*xin.*(kinc+  ...
  ...
  xin).^(-2)+C1.*muc.*(kinc+xin).^(-1);0,0,(-1).*minE+(-1).*monE+(  ...
  ...
  -1).*phive.*Ve+mue.*xin.*(kine+xin).^(-1)+(-1).*psize.*Z,(-1).*  ...
  ...
  E1.*psize,0,0,(-1).*E1.*phive,0,(-1).*E1.*mue.*xin.*(kine+xin).^(  ...
  ...
  -2)+E1.*mue.*(kine+xin).^(-1);pg.*psizh.*qh.*qz.^(-1).*Z,pg.*  ...
  ...
  psizc.*qc.*qz.^(-1).*Z,pg.*psize.*qe.*qz.^(-1).*Z,(-1).*mz+pg.*(  ...
  ...
  C1.*psizc.*qc.*qz.^(-1)+E1.*psize.*qe.*qz.^(-1)+H.*psizh.*qh.*  ...
  ...
  qz.^(-1))+(-2).*mzp.*Z,0,0,0,0,0;betah.*phivh.*Vh,0,0,0,(-1).*mvh+ ...
   ...
  betah.*H.*phivh,0,0,0,0;0,betac.*phivc.*Vc,0,0,0,(-1).*mvc+ ...
  betac.* ...
  C1.*phivc,0,0,0;0,0,betae.*phive.*Ve,0,0,0,(-1).*mve+ ...
  betae.*E1.* ...
  phive,0,0;monH.*qh+phivh.*(qh+(-1).*betah.*qv).*Vh+( ...
  -1).*epsh.^( ...
  -1).*muh.*qh.*xon.*(kon+xon).^(-1)+pon.*psizh.*qh.*Z, ...
  monC.*qc+ ...
  phivc.*(qc+(-1).*betac.*qv).*Vc+pon.*psizc.*qc.*Z,monE.* ...
  qe+phive.* ...
  (qe+(-1).*betae.*qv).*Ve+pon.*psize.*qe.*Z,C1.*pon.* ...
  psizc.*qc+E1.* ...
  pon.*psize.*qe+H.*pon.*psizh.*qh,mvh.*qv+H.*phivh.* ...
  (qh+(-1).* ...
  betah.*qv),mvc.*qv+C1.*phivc.*(qc+(-1).*betac.*qv), ...
  mve.*qv+E1.* ...
  phive.*(qe+(-1).*betae.*qv),epsh.^(-1).*H.*muh.*qh.* ...
  xon.*(kon+xon) ...
  .^(-2)+(-1).*epsh.^(-1).*H.*muh.*qh.*(kon+xon).^( ...
  -1),0;minH.*qh+( ...
  1+(-1).*epsh).*epsh.^(-1).*muh.*qh.*xon.*(kon+ ...
  xon).^(-1)+pin.* ...
  psizh.*qh.*Z,minC.*qc+(-1).*muc.*qc.*xin.*(kinc+ ...
  xin).^(-1)+pin.* ...
  psizc.*qc.*Z,minE.*qe+(-1).*mue.*qe.*xin.*(kine+ ...
  xin).^(-1)+pin.* ...
  psize.*qe.*Z,C1.*pin.*psizc.*qc+E1.*pin.*psize.* ...
  qe+H.*pin.*psizh.* ...
  qh+mz.*qz,0,0,0,(-1).*(1+(-1).*epsh).*epsh.^( ...
  -1).*H.*muh.*qh.* ...
  xon.*(kon+xon).^(-2)+(1+(-1).*epsh).*epsh.^(-1) ...
  .*H.*muh.*qh.*(kon+ ...
  xon).^(-1),(-1).*omega+C1.*muc.*qc.*xin.*( ...
  kinc+xin).^(-2)+(-1).* ...
  C1.*muc.*qc.*(kinc+xin).^(-1)+E1.*mue.*qe.* ...
  xin.*(kine+xin).^(-2)+( ...
  -1).*E1.*mue.*qe.*(kine+xin).^(-1)];
;