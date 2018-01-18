a = ones(5,3);
b = ones(3,5);
c =a * b ;

r = ones (5,5);
r(1,2) = 0;
r(3,2) = 0;
r(5,1) = 0;
r(2,3) = 0;
total = 0 ;
for i = 1:5,
    for j = 1:5,
        if r(i,j)==1 ,
            total += c(i,j);
        end
        
    end 
end

ans = total 

A = sum(sum((a * b) .* r))
B = sum(sum(c(r == 1)))
C = sum(c(:))
