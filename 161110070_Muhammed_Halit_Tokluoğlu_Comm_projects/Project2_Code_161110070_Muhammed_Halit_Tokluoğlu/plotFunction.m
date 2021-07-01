function plotFunction(t,y,sample_axis,sample,quantizedOutput,decodedSignal, ...
    reconstructedSignal,fs,fm,L)
    subplot(3,2,1);
    plot(t,y);
    xlim([-1 1]);
    legend('Original Signal');
    xlabel('time'); ylabel('Signal');title('Original Signal');
    
    subplot(3,2,2);
    plot(t,y); hold on;
    stem(sample_axis,sample,'filled','Color','red'); hold on;
    xlim([-1 1]);
    legend('Original Signal', 'Sampled Signal');
    title1_str = strcat('fs = ', num2str(fs), ', fm = ', num2str(fm));
    xlabel('time'); ylabel('Signal');title(title1_str);
    
    subplot(3,2,3);
    stem(sample_axis,sample,'filled','Color','red'); hold on;
    stem(sample_axis,quantizedOutput,'Color','blue');
    xlim([-1 1]);
    legend( 'Sampled Signal','Quantized Signal');
    title2_str = strcat('L =  ', num2str(L));
    xlabel('time'); ylabel('Signal');title(title2_str);
    
    
    subplot(3,2,4);
    stem(sample_axis,quantizedOutput,'filled','Color','blue');
    xlim([-1 1]);
    legend('Quantized Signal');
    xlabel('time'); ylabel('Signal');title(title2_str);
    
    subplot(3,2,5);
    stem(sample_axis,decodedSignal,'filled','Color','green');
    xlim([-1 1]);
    legend('Decoded Signal(should equal quantized)');
    xlabel('time'); ylabel('Signal');
    title('Receiver part-DecodedSignal');
    
    subplot(3,2,6);
    plot(t,reconstructedSignal);
    xlim([-1 1]);
    ylim([-1.2 1.2]);
    legend('Reconstructed Signal');
    xlabel('time'); ylabel('Signal');
    title('Receiver Part-Reconstructed Signal');
end
