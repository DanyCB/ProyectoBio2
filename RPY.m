
% Inicia comunicación por puerto serie indicando el puerto y la 
% velocidad de comunicación
arduinoObj = serialport("COM3",9600); 

% Indica el caracter con el que terminar una línea en puerto serie
configureTerminator(arduinoObj,"CR/LF");
% flush(arduinoObj);

% Crea un struct donde se almacenan los datos del usuario y los va contando
arduinoObj.UserData = struct("Data",[],"Count",1);

% Escribe un caracter en el puerto serie
write(arduinoObj,"s","string");

% Lee la línea de datos que procede del puerto serie
readline(arduinoObj);

for i=1:10
    readline(arduinoObj);
end

write(arduinoObj,"s","string");

% Vacía el puerto serie
flush(arduinoObj);
readline(arduinoObj);
readline(arduinoObj);
readline(arduinoObj);
arduinoObj.UserData.Data = [];

% Para leer el puerto serie el número de veces deseado, llamando a la
% función RPYData
i=1;
while(i<1000)
    readRPYData(arduinoObj);
    i=i+1;
end

% Imprime los datos que se van leyendo
hold on;
plot(arduinoObj.UserData.Data(:,1)); % Roll
hold on;
plot(arduinoObj.UserData.Data(:,2),'r'); % Pitch

%plot(arduinoObj.USerData.Data(:,3),'g'); % Yaw

%plot(arduinoObj.USerData.Data(:,3),'g'); % Yaw

