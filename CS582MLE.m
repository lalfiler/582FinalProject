%Name: Asislo Alfiler IV
%CS 582
%Assignment 1
%Professor Konopka
sampleData = [151.38 ;172.98 ;149.87 ;190.18 ;181.77 ;134.76 ;220.21 ;164.65 ;180.33 ;208.4 ;212.9 ;200.65 ;123.17 ;77.42 ;202.57 ;213.9 ;152.83 ;183.82 ;231.4 ;172.78 ;129.76 ;183.17 ;172.16 ;192.19 ;191.13 ;174.91 ;143.75 ;223.71 ;134.93 ;171.14 ;226.75 ;134.75 ;155.43 ;145.3 ;164.04 ;206.53 ;195.19 ;156.97 ;166.69 ;179.92 ;192.25 ;149.56 ;227.72 ;157.42 ;172.87 ;151.11 ;175.05 ;118.6 ;161.04 ;248.89 ;127.85 ;121.45 ;165.9 ;177.67 ;272.09 ;178.31 ;256.07 ;168.08 ;158.87 ;236.54 ;199.2 ;118.32 ;116.87 ;136.03 ;227.63 ;239.38 ;179.64 ;153.41 ;54.57 ;206.35 ;145.69 ;115.3 ;207.34 ;210.56 ;117.11 ;158.85 ;160.12 ;82.9 ;170.3 ;140.88 ;181.14 ;123.48 ;137.13 ;95.03 ;146.7 ;85.05 ;156.27 ;103.3 ;167.99 ;183.22 ;160.76 ;189.02 ;122 ;203 ;82.2 ;194.7 ;125.13 ;135.35 ;120.39 ;184.57];
%a. 
sampleMean = mean(sampleData)
sampleStd = std(sampleData)
disp('Likelihood function: (1/sampleStd*sqrt(2*pi))*exp(-(sampleData-sampleMean).^2/(2*sampleStd^2))')
%b.
mleData = mle(sampleData)
sampleVar = var(sampleData)
%c&d.
histfit(sampleData,floor(max(sampleData)*.05))
disp('e. This curve depicts the the distribution of a random sample of men ages 20-29. A random man within the specified age range is more likely to be around the highest part of the curve.')
