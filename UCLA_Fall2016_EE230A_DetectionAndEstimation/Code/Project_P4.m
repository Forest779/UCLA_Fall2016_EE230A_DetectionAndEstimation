errorNum = 0; %Number of total errors
terms = 50000; %Number of MC simulation terms
%MC simulation of 50,000 terms
for i = 1:terms
    W = wblrnd(1,2);
    n = normrnd(0,sqrt(0.1));
    r = rand;
    if(r>0.5)
        X = W+n; %H1 situation
    else
        X = -W+n; %H0 situation
    end
    if(r>0.5)
        if(X<0)
            errorNum = errorNum+1;
        end
    else
        if(X>=0)
            errorNum = errorNum+1;
        end
    end
end
errorRate = errorNum/terms;