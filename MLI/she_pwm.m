levels = 11;
no_angles = (levels - 1) / 2;


% angles = optimize_angles(no_angles, [5,7,9,11,13,17)
angles = [6.57, 18.94, 27.18, 45.14, 62.24];

angle_levels = angles_to_levels(angles);


% angle optimizer
% function angles = optimize_angles(no_angles, harmonics)
% 
% end



function angle_levels  = angles_to_levels(angles)
    % 
    % if ang_converted == 1
    %     compare_levels = getVariable(mdlWks, 'compare_levels');
    %     return
    % end
    
    
    [~, angles_no] = size(angles);
    angle_levels = zeros(1,angles_no);
    
    
    for i = 1:1:angles_no
        level = angles(i)/90; % as in a full cycle we have 2 updown carrier
        % if ref < 0
        %     level = -level;
        % end
        angle_levels(i) = level;
        disp(level);
    end
    
    % ang_converted = 1;
    % 
    % assignin(mdlWks, "ang_converted", ang_converted);
    % assignin(mdlWks, "compare_levels", compare_levels);
end