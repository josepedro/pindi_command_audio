function command = get_voice_command(audio_signal)

% --------------- LIGAR DATABASE --------------------
	% Pass to ligar 1
	signal_pindi_ligar_1 = wavread('palmas/palma_4.wav');
	lengths = [length(signal_pindi_ligar_1) length(audio_signal)];
	signal_pindi_ligar_1 = signal_pindi_ligar_1(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_ligar_1 = log(abs(fft(signal_pindi_ligar_1)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	ligar_1 = corrcoef(cepstrum_pindi_ligar_1, cepstrum_audio_signal);
	ligar_1 = abs(ligar_1(1,2));


% --------------- DESLIGAR DATABASE --------------------
	% Pass to desligar 1
	signal_pindi_desligar_1 = wavread('pindi_desligar.wav');
	lengths = [length(signal_pindi_desligar_1) length(audio_signal)];
	signal_pindi_desligar_1 = signal_pindi_desligar_1(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_desligar_1 = log(abs(fft(signal_pindi_desligar_1)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	desligar_1 = corrcoef(cepstrum_pindi_desligar_1, cepstrum_audio_signal);
	desligar_1 = abs(desligar_1(1,2));

	% Pass to desligar 2
	signal_pindi_desligar_2 = wavread('pindi_desligar_2.wav');
	lengths = [length(signal_pindi_desligar_2) length(audio_signal)];
	signal_pindi_desligar_2 = signal_pindi_desligar_2(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_desligar_2 = log(abs(fft(signal_pindi_desligar_2)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	desligar_2 = corrcoef(cepstrum_pindi_desligar_2, cepstrum_audio_signal);
	desligar_2 = abs(desligar_2(1,2));

	% Pass to desligar 3
	signal_pindi_desligar_3 = wavread('pindi_desligar_3.wav');
	lengths = [length(signal_pindi_desligar_3) length(audio_signal)];
	signal_pindi_desligar_3 = signal_pindi_desligar_3(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_desligar_3 = log(abs(fft(signal_pindi_desligar_3)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	desligar_3 = corrcoef(cepstrum_pindi_desligar_3, cepstrum_audio_signal);
	desligar_3 = abs(desligar_3(1,2));



% Pass to noise 1
	signal_pindi_noise_1 = wavread('pindi_noise.wav');
	lengths = [length(signal_pindi_noise_1) length(audio_signal)];
	signal_pindi_noise_1 = signal_pindi_noise_1(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_1 = log(abs(fft(signal_pindi_noise_1)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_1 = corrcoef(cepstrum_pindi_noise_1, cepstrum_audio_signal);
	noise_1 = abs(noise_1(1,2));

	% Pass to noise 2
	signal_pindi_noise_2 = wavread('pindi_noise_2.wav');
	lengths = [length(signal_pindi_noise_2) length(audio_signal)];
	signal_pindi_noise_2 = signal_pindi_noise_2(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_2 = log(abs(fft(signal_pindi_noise_2)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_2 = corrcoef(cepstrum_pindi_noise_2, cepstrum_audio_signal);
	noise_2 = abs(noise_2(1,2));

	% Pass to noise 3
	signal_pindi_noise_3 = wavread('pindi_noise_3.wav');
	lengths = [length(signal_pindi_noise_3) length(audio_signal)];
	signal_pindi_noise_3 = signal_pindi_noise_3(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_3 = log(abs(fft(signal_pindi_noise_3)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_3 = corrcoef(cepstrum_pindi_noise_3, cepstrum_audio_signal);
	noise_3 = abs(noise_3(1,2));

	% Pass to noise 4
	signal_pindi_noise_4 = wavread('pindi_noise_4.wav');
	lengths = [length(signal_pindi_noise_4) length(audio_signal)];
	signal_pindi_noise_4 = signal_pindi_noise_4(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_4 = log(abs(fft(signal_pindi_noise_4)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_4 = corrcoef(cepstrum_pindi_noise_4, cepstrum_audio_signal);
	noise_4 = abs(noise_4(1,2));

	% Pass to noise 5
	signal_pindi_noise_5 = wavread('pindi_noise_5.wav');
	lengths = [length(signal_pindi_noise_5) length(audio_signal)];
	signal_pindi_noise_5 = signal_pindi_noise_5(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_5 = log(abs(fft(signal_pindi_noise_5)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_5 = corrcoef(cepstrum_pindi_noise_5, cepstrum_audio_signal);
	noise_5 = abs(noise_5(1,2));

	% Pass to noise 6
	signal_pindi_noise_6 = wavread('pindi_noise_6.wav');
	lengths = [length(signal_pindi_noise_6) length(audio_signal)];
	signal_pindi_noise_6 = signal_pindi_noise_6(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_6 = log(abs(fft(signal_pindi_noise_6)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_6 = corrcoef(cepstrum_pindi_noise_6, cepstrum_audio_signal);
	noise_6 = abs(noise_6(1,2));

	% Pass to noise 7
	signal_pindi_noise_7 = wavread('pindi_noise_7.wav');
	lengths = [length(signal_pindi_noise_7) length(audio_signal)];
	signal_pindi_noise_7 = signal_pindi_noise_7(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_7 = log(abs(fft(signal_pindi_noise_7)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_7 = corrcoef(cepstrum_pindi_noise_7, cepstrum_audio_signal);
	noise_7 = abs(noise_7(1,2));

	% Pass to noise 8
	signal_pindi_noise_8 = wavread('pindi_noise_8.wav');
	lengths = [length(signal_pindi_noise_8) length(audio_signal)];
	signal_pindi_noise_8 = signal_pindi_noise_8(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_8 = log(abs(fft(signal_pindi_noise_8)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_8 = corrcoef(cepstrum_pindi_noise_8, cepstrum_audio_signal);
	noise_8 = abs(noise_8(1,2));

	% Pass to noise 9
	signal_pindi_noise_9 = wavread('pindi_noise_9.wav');
	lengths = [length(signal_pindi_noise_9) length(audio_signal)];
	signal_pindi_noise_9 = signal_pindi_noise_9(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_9 = log(abs(fft(signal_pindi_noise_9)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_9 = corrcoef(cepstrum_pindi_noise_9, cepstrum_audio_signal);
	noise_9 = abs(noise_9(1,2));

	% Pass to noise 10
	signal_pindi_noise_10 = wavread('pindi_noise_10.wav');
	lengths = [length(signal_pindi_noise_10) length(audio_signal)];
	signal_pindi_noise_10 = signal_pindi_noise_10(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_10 = log(abs(fft(signal_pindi_noise_10)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_10 = corrcoef(cepstrum_pindi_noise_10, cepstrum_audio_signal);
	noise_10 = abs(noise_10(1,2));


	% Pass to noise 13
	signal_pindi_noise_13 = wavread('pindi_noise_13.wav');
	lengths = [length(signal_pindi_noise_13) length(audio_signal)];
	signal_pindi_noise_13 = signal_pindi_noise_13(1:min(lengths));
	audio_signal_calc = audio_signal(1:min(lengths));
	cepstrum_pindi_noise_13 = log(abs(fft(signal_pindi_noise_13)));
	cepstrum_audio_signal = log(abs(fft(audio_signal_calc)));
	noise_13 = corrcoef(cepstrum_pindi_noise_13, cepstrum_audio_signal);
	noise_13 = abs(noise_13(1,2));

% ------------------- COMMANDS -------------------------
	commands_ligar = [ligar_1];
	commands_desligar = [desligar_1 desligar_2 desligar_3];
	commands_noise = [noise_1 noise_2 noise_3 noise_4 noise_5 ...
	noise_6 noise_7 noise_8 noise_9 noise_10];
	commands = [max(commands_ligar) max(commands_desligar) max(commands_noise)];

	command = 999;
	if find(commands == max(commands)) == 1
		command = 1;
	elseif find(commands == max(commands)) == 2
		command = -1;
	elseif find(commands == max(commands)) == 3
		command = 0;
	end
end