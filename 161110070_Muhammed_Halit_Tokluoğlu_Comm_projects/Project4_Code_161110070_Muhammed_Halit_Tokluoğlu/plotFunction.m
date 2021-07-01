function plotFunction(timeAxis, AnalogSignal_1, AnalogSignal_2, ...
    fm1, fm2, fs, SamplingWidth, SampledSignal_1, SampledSignal_2, ...
    TDM_Signal, SampledTDD_Signal_1, SampledTDD_Signal_2, ...
    ReconstructedSignal1,ReconstructedSignal2)

    subplot(3,4,1);
    plot(timeAxis,AnalogSignal_1); hold on;
    plot(timeAxis,SampledSignal_1);
    xlim([-1 1]);
    legend('Analog Signal 1', 'Sampled Signal 1');
    title1_str = strcat('Analog Signal 1 (fm:', num2str(fm1),')');
    title(title1_str);

    subplot(3,4,2);
    plot(timeAxis,AnalogSignal_2); hold on;
    plot(timeAxis,SampledSignal_2);
    xlim([-1 1]);
    legend('Analog Signal 2', 'Sampled Signal 2');
    title2_str = strcat('Analog Signal 2 (fm:', num2str(fm2),')');
    title(title2_str);

    subplot(3,4,3);
    plot(timeAxis,SampledSignal_1);
    xlim([-1 1]);
    legend('Sampled Signal 1');
    title3_str = strcat('fs:', num2str(fs),', SamplingWidth:',num2str(SamplingWidth));
    title(title3_str);

    subplot(3,4,4);
    plot(timeAxis,SampledSignal_2);
    xlim([-1 1]);
    legend('Sampled Signal 2');
    title3_str = strcat('fs:', num2str(fs),', SamplingWidth:',num2str(SamplingWidth));
    title(title3_str);

    subplot(3,4,5:6);
    plot(timeAxis,SampledSignal_1); hold on;
    plot(timeAxis,SampledSignal_2);
    xlim([-1 1]);
    legend('Sampled Signal 1', 'Sampled Signal 2');


    subplot(3,4,7:8);
    plot(timeAxis,TDM_Signal);
    xlim([-1 1]);
    legend('TDM Signal');


    subplot(3,4,9);
    plot(timeAxis,SampledTDD_Signal_1);
    xlim([-1 1]);
    legend('Receiver TDD Sampled Signal 1')
    title('Receiver Part After Sampling Circuit');

    subplot(3,4,10);
    plot(timeAxis,SampledTDD_Signal_2);
    xlim([-1 1]);
    legend('Receiver TDD Sampled Signal 2')
    title('Receiver Part After Sampling Circuit');

    subplot(3,4,11);
    plot(timeAxis,ReconstructedSignal1);
    xlim([-1 1]);
    legend('Reconstructed Signal 1')
    title('After Lowpass Filter');

    subplot(3,4,12);
    plot(timeAxis,ReconstructedSignal2);
    xlim([-1 1]);
    legend('Reconstructed Signal 2')
    title('After Lowpass Filter');

end