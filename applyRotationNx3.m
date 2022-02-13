function modelRotated = applyRotationNx3(model,centerRotation,matrixRotation)

% Aplica una matriz de rotación a un modelo teniendo un centro de giro 

% Input:
%    - model: modelo a rotar (Nx3 - N vértices, cada vértice tiene 3 
%                             componentes (x,y,z))
%    - centerRotation: centro de rotación (1x3 porque es un punto (x,y,z))
%    - matrixRotation: matriz de rotación (3x3)

% Se obtiene el modelo rotado tras multiplicar la matriz de rotación por el
% modelo al que se le ha restado un vector de filas (size(model,1)) y
% columnas (1) con respecto al centro de rotación
modelRotated = matrixRotation*(model-repmat(centerRotation,size(model,1),1))';

% Se calcula la traspuesta del modelo rotado y se le suma un vector de filas 
% (size(model,1)) y columnas (1) con respecto al centro de rotación
modelRotated = modelRotated' + repmat(centerRotation,size(model,1),1);

end

