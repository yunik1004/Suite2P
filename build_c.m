function build_c()
    %BUILD_C generates c mex function

    mfilepath = fileparts(which(mfilename));

    if isempty(dir(fullfile(mfilepath, 'deconvL0.mexw64')))
        eval(['mex -largeArrayDims "', fullfile(mfilepath, 'SpikeDetection/deconvL0.c'), '" -outdir "', mfilepath, '"']);
    end

end
