function [cM,index] = computeCPMccP(cM,index)
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    if index==(1)
    %display(confundida);
    h1=cM(1,1);
    h2=cM(1,2);
    h3=cM(2,1);
    h4=cM(2,2);
    fprintf('FOR CLASS INDEX 1 AS POSITIVE \n');
    Xa = ['True positives: ',num2str(h1)];
    disp(Xa);
    Xb = ['False positives: ',num2str(h3)];
    disp(Xb);
    Xc = ['False negatives: ',num2str(h2)];
    disp(Xc);
    Xd = ['True negatives: ',num2str(h4)];
    disp(Xd);
    sensi=(h1/(h1+h2));
    especi=(h4/(h4+h3));
    Xe = ['Sensitivity: ',num2str(sensi)];
    disp(Xe);
    Xf = ['Specificity: ',num2str(especi)];
    disp(Xf);
     elseif index==(2)
        h1=cM(1,1);
        h2=cM(1,2);
        h3=cM(2,1);
        h4=cM(2,2);
         fprintf('FOR CLASS INDEX 2 AS POSITIVE \n');
            Xa = ['True positives: ',num2str(h4)];
            disp(Xa);
            Xb = ['False positives: ',num2str(h2)];
            disp(Xb);
            Xc = ['False negatives: ',num2str(h3)];
            disp(Xc);
            Xd = ['True negatives: ',num2str(h1)];
            disp(Xd);
            sensi=(h4/(h4+h3));
            especi=(h1/(h1+h2));
            Xe = ['Sensitivity: ',num2str(sensi)];
            disp(Xe);
            Xf = ['Specificity: ',num2str(especi)];
            disp(Xf);
    end