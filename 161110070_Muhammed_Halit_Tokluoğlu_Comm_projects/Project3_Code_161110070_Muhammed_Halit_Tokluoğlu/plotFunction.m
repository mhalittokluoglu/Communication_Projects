function plotFunction(t,y,sample_axis,sample,quantizedOutput,HoldedQuantizedOutput, ...
    quantizationError, reconstructedSignal,fs,fm,L)
subplot(4,2,1);
plot(t,y); hold on;
stem(sample_axis,sample,'Color','red');
legend('Original Signal', 'Sampled Values');
title1_str = strcat('fs = ', num2str(fs), ', fm = ', num2str(fm));
title(title1_str);
xlim([-1 1])
grid on;
subplot(4,2,2);
stem(sample_axis,sample,'filled','Color','red'); hold on;
stem(sample_axis,quantizedOutput,'Color','black');
legend('Sampled Values', 'Quantized Values');
title2_str = strcat('L =  ', num2str(L));
title(title2_str);
xlim([-1 1]);
grid on;
subplot(4,2,3);
plot(t,y,'Color', 'blue'); hold on;
plot(sample_axis,sample,'*c','Color','red');
plot(sample_axis,quantizedOutput,'oc','Color','black');
plot(t,HoldedQuantizedOutput)
legend('Original Signal','Sampled Values',...
    'Quantized Values','Holded Quantized Signal');
xlim([-1 1]);
grid on;
subplot(4,2,4);
plot(t,quantizationError);
legend('Quantization Error');
xlim([-1 1]);
ylim([-2.5 2.5]);
grid on;

subplot(4,2,5:6);
plot(t,reconstructedSignal);
legend('Reconstructed Signal');
xlim([-1 1]);
ylim([-1 1]);
grid on;
end