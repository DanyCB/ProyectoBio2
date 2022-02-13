function gcs = grafica_cadera_s() 
    % Grafica cadera subida
    
    % Eje X de puntos originales
    xH = 0:5:100;
    
    % Distribucion original con variable aleatoria para desplazamiento de
    % +-5% de picos y valles
    xHvar = xH + 0.1*rand(1,length(xH))-0.05;
    
    % Para asegurarnos de que la componente X va de 0 a 100 a pesar de la 
    % variable aleatoria
    xHvar(1) = 0;
    xHvar(end) = 100;
    
    % Periodo entre muestras
    T = (xHvar(end)-xHvar(1))/length(xHvar); 
    
    % Valor aleatorio T al que se le resta la mitad del propio periodo para que 
    % cuando se muevan dos muestras consecutivas, no se superpongan entre sí
    rxT = T.*rand(1,1) - (T/2); 
    
    % Nuevo eje x con periodo de muestreo aleatorio
    xHvar = xHvar + rxT;
    
    % Componente X de evaluacion
    xR = 0:0.05:100; 
    
    % Componente Y de puntos originales
    % Se termina en el mismo punto en el que se empieza
    yH = [8,9,11,12,10,9,6,5,4,4,3,0,-15,-18,-15,-10,3,6,10,10,8];
    
    % Distribucion original y con variable aleatoria del 5%
    yHvar = yH + 0.05*rand(1,length(yH));
    
    % Definicion del minimo y maximo del movimiento
    minim = 0.96;
    maxim = 1.5;
    
    % Duracion aleatoria del movimiento
    duration = minim + (maxim-minim)*rand(1);
    
    % Ajuste del eje X a la duracion del movimiento
    xH2 = xHvar*duration;
    
    % Interpolacion Akima
    pp = makima(xH2,yHvar);
    % Evaluacion del polinomio
    m = ppval(pp,xR*duration);

    % Rango de la señal 
    rango = max(m)-min(m);
    % Introduccion de un +-10% de ruido sobre la curva de movimiento obtenida
    ruido = 0.2*rango*rand(1,length(m))-0.1;
    m = m + ruido;
    
    % Representacion de la curva de movimiento sin utilizar filtros
    gcs = [xR*duration,m];
    
    % Descomentar la siguiente línea si se quiere visualizar la curva
    % correctamente (a partir de la muestra 2003) - Solo es necesario si se
    % ejecuta como clase independiente y no a partir del main
    % gcs = gcs(2003:end);
    
    % plot(gcs);
    
    % xlabel('Tiempo de movimiento (ms)');
    % ylabel('Ángulo del tobillo (º)');
    % hold on;
    
    %% Filtrado
    % Probamos diferentes filtros de paso bajo de distintos órdenes para ver
    % el efecto que tienen sobre la gráfica. Se descartaron los filtro de paso
    % alto porque no proporcionaban una mejora en la gráfica ruidosa
    
    % Butterworth
    % [bb,ab] = butter(6,0.5);
    % [bb,ab] = butter(2,0.5);
    % [bb,ab] = butter(12,0.5);
    % grafica_filtradaB = filtfilt(bb,ab,gcs);
    
    % Cheby1
    % [bc1,ac1] = cheby1(6,5,0.5); % 5 son los decibelos en la banda de rizado
    % [bc1,ac1] = cheby1(2,5,0.5); 
    % [bc1,ac1] = cheby1(12,5,0.5); 
    % grafica_filtradaC1 = filtfilt(bc1,ac1,gcs);
    
    % Cheby2
    % [bc2,ac2] = cheby2(6,80,0.5); % 80 son los decibelos en la banda de rechazo
    % [bc2,ac2] = cheby2(2,80,0.5); 
    % [bc2,ac2] = cheby2(12,80,0.5); 
    % grafica_filtradaC2 = filtfilt(bc2,ac2,gcs); 
    
    % Eliptico
    % [be,ae] = ellip(6,5,80,0.5);
    % [be,ae] = ellip(2,5,80,0.5);
    % [be,ae] = ellip(12,5,80,0.5);
    % grafica_filtradaE = filtfilt(be,ae,gcs); 
    
    % Terminamos eligiendo el cheby2 de orden 2 como filtro que mejor resultado
    % proporciona
    % figure('Name','Filtrado orden 2'); 
    % subplot(5,1,1), plot(gcs),
    % subplot(5,1,2), plot(grafica_filtradaB),
    % subplot(5,1,3), plot(grafica_filtradaC1),
    % subplot(5,1,4), plot(grafica_filtradaC2),
    % subplot(5,1,5), plot(grafica_filtradaE);
    
    % Descomentar las líneas inferiores y las del filtro que se desee probar 
    % para observar la gráfica ruidosa y filtrada
    
    % figure;
    % subplot(2,1,1), plot(gcs), title('Gráfica con ruido'), 
    % xlabel('Tiempo de movimiento (ms)'), ylabel('Ángulo de la cadera (º)');
    % subplot(2,1,2), plot(grafica_filtradaC2), title('Gráfica filtrada'),
    % xlabel('Tiempo de movimiento (ms)'), ylabel('Ángulo de la cadera (º)');
end