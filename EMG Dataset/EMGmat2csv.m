for sub = 1:15
    if sub == 5 || sub == 6 || sub == 7
        continue;
    end
    cell = struct2cell(eval(sprintf('Subject%d_pro', sub)));
    for i = 1:numel(cell)
        cell2 = struct2cell(cell{i});
        for ii = 1:numel(cell2)
            cell3 = struct2cell(cell2{ii});
            for j = 1:3
                tabl = cell3{2}(j, 2);
                addr = sprintf('D:\\Documents\\Codes\\Projects\\Torque Estimation\\EMG Dataset\\Data\\subject%d_v%d_rl%d_trial%d_emg.csv', sub, i, ii, j);
                writetable(tabl{1}, addr);
                tabl = cell3{8}(j, 2);
                addr = sprintf('D:\\Documents\\Codes\\Projects\\Torque Estimation\\EMG Dataset\\Data\\subject%d_v%d_rl%d_trial%d_trq.csv', sub, i, ii, j);
                writetable(tabl{1}, addr);
            end
        end
    end
end