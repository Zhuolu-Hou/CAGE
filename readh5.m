function [match,match_conf,so,Hgt]=readh5(h5path_match,h5path_match_conf,h5path_so1,h5path_Hgt,datasetNameIsNum)
    match      = h5read(h5path_match     ,['/',datasetNameIsNum]);
    match_conf = h5read(h5path_match_conf,['/',datasetNameIsNum]);
    so         = h5read(h5path_so1       ,['/',datasetNameIsNum]);
    Hgt        = h5read(h5path_Hgt       ,['/',datasetNameIsNum]);
end