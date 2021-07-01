% PLOTTING SCRIPT
subplot(2,2,1);
plot(t,y);
legend('Original Signal');
xlabel('time'); ylabel('Signal');title('Original Signal');
subplot(2,2,2);
plot(t,y); hold on;
stem(sample_axis,sample,'filled','Color','red');
legend('Original Signal', 'Sampled Signal');
title1_str = strcat('fs = ', num2str(fs), ', f = ', num2str(f));
xlabel('time'); ylabel('Signal');title(title1_str);
subplot(2,2,3:4);
stem(sample_axis,sample,'filled','Color','red');
hold on;
stem(sample_axis,quantizedOutput,'filled','Color','blue');
legend('Sampled Signal', 'Quantized Signal');
title2_str = strcat('For L = ', num2str(L));
xlabel('time'); ylabel('Signal');title(title2_str);
