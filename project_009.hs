project_9 = head [ a*b*c | a <- [1..1000], b <- [a..1000], let c = sqrt((a^2) + (b^2)), a+b+c == 1000]
