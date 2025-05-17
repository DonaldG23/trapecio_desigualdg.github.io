function trapecio_desigual()
    % Funcion a integrar
    f = @(x) 5*x.^3 - 3*x.^2 + 2*x + 1;

    % Puntos desiguales entre 0 y 1
    xi = [0, 0.2, 0.5, 0.7, 1];
    yi = f(xi);

    % Calculo de la integral por trapecios desiguales
    integral_aprox = 0;
    for i = 1:length(xi)-1
        h = xi(i+1) - xi(i);
        integral_aprox = integral_aprox + (h/2) * (yi(i) + yi(i+1));
    end

    % Valor exacto conocido
    valor_exacto = 2.25;

    % Error relativo porcentual
    error_relativo = abs((valor_exacto - integral_aprox) / valor_exacto) * 100;

    % Mostrar resultados
    fprintf('Integral aproximada: %.4f\n', integral_aprox);
    fprintf('Error relativo porcentual: %.2f%%\n', error_relativo);
end
