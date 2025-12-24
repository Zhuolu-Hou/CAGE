function [cleanedPoints1,cleanedPoints2] = evaluate_match(match,H)

    % 计算所有匹配项的正确匹配点
    matchedPoints1 = match(:,1:2);
    matchedPoints2 = match(:,3:4);
    
    Y_=H*[matchedPoints1';ones(1,size(matchedPoints1,1))];
    Y_(1,:)=Y_(1,:)./Y_(3,:);
    Y_(2,:)=Y_(2,:)./Y_(3,:);
    E=sqrt(sum((Y_(1:2,:)-matchedPoints2').^2));
    allinliersIndex=E<5;
    cleanedPoints1 = matchedPoints1(allinliersIndex, :);
    cleanedPoints2 = matchedPoints2(allinliersIndex, :);

end