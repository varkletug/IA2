function r = adalineLearning(x,y,w_ini,gamma,goal_error)
        yhat=adalineOutput(x,w_ini);
        error=computeAdalineError(y,yhat);
        fprintf('El error es %f \n', error);
        m=size(x,1);
        w=w_ini;
        W_values=w_ini.';
        contador=0;
         fprintf('El error es %f', error);
            while error > goal_error
                contador=contador+1;
                %fprintf('Entrando al while por %d  \n', contador);
                for i=1:m
                    fprintf('Entrando al while por vez  %d el ejemplo número %d  \n', contador, i);
                x_iT=x(i,:);
                x_iaumT=[1,x_iT];
                S=x_iaumT*w;
                    yhat_i=S;
                     w = w + gamma*(y(i)-yhat_i)*x_iaumT.';
                     W_values=[W_values;w.'];
                end
                yhat=adalineOutput(x,w);
                error=computeAdalineError(y,yhat);
                fprintf('El error es %f', error);
            end
        
        r=W_values;
end