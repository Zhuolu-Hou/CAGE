function [im1, im2] = readimage(im1path, im2path)
% READIMAGE 读取两张图像并进行路径有效性检查
% 输入: im1path, im2path - 图像的完整路径字符串
% 输出: im1, im2 - 读取后的图像矩阵，如果读取失败则返回空值

    % 初始化输出
    im1 = []; im2 = [];

    % 检查文件 1 是否存在
    if exist(im1path, 'file') ~= 2
        error('错误: 找不到文件 1，请检查路径: \n%s', im1path);
    end

    % 检查文件 2 是否存在
    if exist(im2path, 'file') ~= 2
        error('错误: 找不到文件 2，请检查路径: \n%s', im2path);
    end

    try
        % 尝试读取图像
        im1 = imread(im1path);
        im2 = imread(im2path);
        
        % 转换格式（可选）：
        % 在特征匹配中，通常建议统一转换为双精度浮点型或特定的灰度格式
        % im1 = im2double(im1); 
        % im2 = im2double(im2);
        
    catch ME
        % 捕捉读取过程中的异常（如文件损坏）
        fprintf('图像读取过程中发生错误: %s\n', ME.message);
        rethrow(ME); % 重新抛出错误
    end
end