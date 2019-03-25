nsamples = 5;
npoints = 50;
for k = 1:nsamples
    k
    iterationString = ['Iteration #',int2str(k)];
    disp(iterationString)
    rand(npoints,1)
    currentData = rand(npoints,1)
    sampleMean(k) = mean(currentData);
    sampleMean(k)
end
overallMean = mean (sampleMean) 

if overallMean < .49
 disp('Mean is less than expected')
elseif overallMean > .51
 disp('Mean is greater than expected')
else
 disp('Mean is within the expected range')
end