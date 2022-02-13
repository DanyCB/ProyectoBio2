%V1=[0,0,0];
%V2=[10,0,0];
%V3=[10,10,0];
%V4=[0,10,0];
%V5=[0,0,10];
%V6=[10,0,10];
%V7=[10,10,10];
%V8=[0,10,10];

%V=[V1;V2;V3;V4;V5;V6;V7;V8];
F=[1,2,3,4;5,6,7,8;5,6,2,1;8,7,3,4;6,7,3,2;5,8,4,1];
C=[1,0,0;0,1,0;0,0,1;1,1,0;1,0,1;0,1,1];
%patch('Faces',F,'Vertices',V,'FaceVertexCData',C,'FaceColor','flat');

pieDTalon=[0,0,0;20,0,0;20,15,0;0,15,0;0,0,10;20,0,10;20,15,10;0,15,10];
patch('Faces',F,'Vertices',pieDTalon,'FaceVertexCData',C,'FaceColor','flat');
axis equal

pieDPunta=[20,0,0;35,0,0;40,15,0;20,15,0;20,0,10;35,0,5;40,15,5;20,15,10];
patch('Faces',F,'Vertices',pieDPunta,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoGordo=[35,10,0;45,10,0;45,15,0;40,15,0;35,10,5;45,10,5;45,15,5;40,15,5];
patch('Faces',F,'Vertices',DeoGordo,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoIndice=[35,7,0;43,7,0;43,10,0;35,10,0;35,7,5;43,7,5;43,10,5;35,10,5];
patch('Faces',F,'Vertices',DeoIndice,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoCorazon=[35,4,0;42,4,0;42,7,0;35,7,0;35,4,5;42,4,5;42,7,5;35,7,5];
patch('Faces',F,'Vertices',DeoCorazon,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoAnular=[35,2,0;41,2,0;41,4,0;35,4,0;35,2,5;41,2,5;41,4,5;35,4,5];
patch('Faces',F,'Vertices',DeoAnular,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoMenique=[35,0,0;38,0,0;38,2,0;35,2,0;35,0,5;38,0,5;38,2,5;35,2,5];
patch('Faces',F,'Vertices',DeoMenique,'FaceVertexCData',C,'FaceColor','flat');
axis equal

Pierna1=[5,0,10;15,0,10;15,15,10;5,15,10;5,0,70;15,0,70;15,15,70;5,15,70];
patch('Faces',F,'Vertices',Pierna1,'FaceVertexCData',C,'FaceColor','flat');
axis equal


Pierna2=[0,0,10;5,0,10;5,15,10;0,15,10;-5,0,45;5,0,45;5,15,45;-5,15,45];
patch('Faces',F,'Vertices',Pierna2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

Pierna3=[-5,0,45;5,0,45;5,15,45;-5,15,45;0,0,70;5,0,70;5,15,70;0,15,70];
patch('Faces',F,'Vertices',Pierna3,'FaceVertexCData',C,'FaceColor','flat');
axis equal

PiernaSuperior1=[0,0,70;15,0,70;15,15,70;0,15,70;-10,-5,120;15,-5,120;15,20,120;-10,20,120];
patch('Faces',F,'Vertices',PiernaSuperior1,'FaceVertexCData',C,'FaceColor','flat');
axis equal

PiernaSuperior2=[-10,-5,120;15,-5,120;15,20,120;-10,20,120;-10,-5,140;15,-5,140;15,20,140;-10,20,140];
patch('Faces',F,'Vertices',PiernaSuperior2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

%Parte de cadera no me acaba de convencer
Cadera=[-10,-5,140;15,-5,140;15,55,140;-10,55,140;-10,-5,160;15,-5,160;15,55,160;-10,55,160];
patch('Faces',F,'Vertices',Cadera,'FaceVertexCData',C,'FaceColor','flat');
axis equal

%Pierna izquierda
pieDTalon2=[0,35,0;20,35,0;20,50,0;0,50,0;0,35,10;20,35,10;20,50,10;0,50,10];
patch('Faces',F,'Vertices',pieDTalon2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

pieDPunta2=[20,35,0;40,35,0;35,50,0;20,50,0;20,35,10;40,35,5;35,50,5;20,50,10];
patch('Faces',F,'Vertices',pieDPunta2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoGordo2=[35,40,0;45,40,0;45,35,0;40,35,0;35,40,5;45,40,5;45,35,5;40,35,5];
patch('Faces',F,'Vertices',DeoGordo2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoIndice2=[35,43,0;43,43,0;43,40,0;35,40,0;35,43,5;43,43,5;43,40,5;35,40,5];
patch('Faces',F,'Vertices',DeoIndice2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoCorazon2=[35,46,0;42,46,0;42,43,0;35,43,0;35,46,5;42,46,5;42,43,5;35,43,5];
patch('Faces',F,'Vertices',DeoCorazon2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoAnular2=[35,48,0;41,48,0;41,46,0;35,46,0;35,48,5;41,48,5;41,46,5;35,46,5];
patch('Faces',F,'Vertices',DeoAnular2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

DeoMenique2=[35,50,0;38,50,0;38,48,0;35,48,0;35,50,5;38,50,5;38,48,5;35,48,5];
patch('Faces',F,'Vertices',DeoMenique2,'FaceVertexCData',C,'FaceColor','flat');
axis equal

Pierna4=[5,35,10;15,35,10;15,50,10;5,50,10;5,35,70;15,35,70;15,50,70;5,50,70];
patch('Faces',F,'Vertices',Pierna4,'FaceVertexCData',C,'FaceColor','flat');
axis equal

Pierna5=[0,35,10;5,35,10;5,50,10;0,50,10;-5,35,45;5,35,45;5,50,45;-5,50,45];
patch('Faces',F,'Vertices',Pierna5,'FaceVertexCData',C,'FaceColor','flat');
axis equal

Pierna6=[-5,35,45;5,35,45;5,50,45;-5,50,45;0,35,70;5,35,70;5,50,70;0,50,70];
patch('Faces',F,'Vertices',Pierna6,'FaceVertexCData',C,'FaceColor','flat');
axis equal

PiernaSuperior3=[0,35,70;15,35,70;15,50,70;0,50,70;-10,30,120;15,30,120;15,55,120;-10,55,120];
patch('Faces',F,'Vertices',PiernaSuperior3,'FaceVertexCData',C,'FaceColor','flat');
axis equal

PiernaSuperior4=[-10,30,120;15,30,120;15,55,120;-10,55,120;-10,30,140;15,30,140;15,55,140;-10,55,140];
patch('Faces',F,'Vertices',PiernaSuperior4,'FaceVertexCData',C,'FaceColor','flat');
axis equal

torso = [-10,-5,160;15,-5,160;15,55,160;-10,55,160;-10,-10,250;15,-10,250;15,60,250;-10,60,250];
patch('Faces', F, 'Vertices',torso,'FaceVertexCData', C, 'FaceColor','flat');
axis equal

xlabel('x');
ylabel('y');
zlabel('z');
view(3);