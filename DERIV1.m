function dxdt = DERIV(t, x)
    % Calculate the first derivative of x with respect to t
    
    % Forward difference at the first point
    dxdt(1) = (x(2) - x(1)) / (t(2) - t(1));
    
    % Central difference for the interior points
    for i = 2:length(t)-1
        dxdt(i) = (x(i+1) - x(i-1)) / (t(i+1) - t(i-1));
    end
    
    % Backward difference at the last point
    dxdt(end) = (x(end) - x(end-1)) / (t(end) - t(end-1));
end
