function [ freq ] = extract_freq( samples )
%from a small set of samples, extract the main frequency

Y= fft(samples);
spectrum = Y.*conj(Y)/length(Y);
% plot(spectrum)
[~,freq] = max(spectrum)


end
