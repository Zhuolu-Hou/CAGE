clc; clear; close all;
addpath figure\
%% ========================================================================
% Algorithm: CAGE (Cascaded Attribute–Geometric)
% Author:      Zhuolu Hou
% Affiliation: Wuhan University
% Function:    Outlier removal under extremely low inlier ratios.
% Input:       Coordinates of candidate matches [x1, y1, x2, y2] and their local attributes.
% Output:      Refined coordinates of matches (inliers) and the geometric transformation H.
% ========================================================================

% 1. Image Acquisition and Preprocessing
% Read the reference image (left) and the target image (right) using a robust reader.
[im1, im2] = readimage('0-1.jpg', '0-2.jpg');

% 2. Candidate Feature Matching
% Extract feature points and establish initial correspondences using local descriptors.
% coordinate: N×4 matrix where each row represents [x1, y1, x2, y2].
% attribute: N×M matrix representing local geometric properties (e.g., scale, orientation, or local affine info).
[coordinate, attribute] = FeatureMatch(im1, im2);

% 3. CAGE Outlier Removal (The Core Algorithm)
% The CAGE algorithm processes the candidate set to distinguish true matches from noise.
% This is particularly effective when the inlier ratio is extremely low (e.g., < 5%).
[inliers] = CAGE(coordinate, attribute);

%%
% 4. Visualization of Results
% Display the final refined matches between the two images.
% True positives are typically visualized in blue to show motion consistency[cite: 633, 748].
figure;showMatchedFeatures(im1, im2, coordinate(:,1:2), coordinate(:,3:4), 'montage');
title('Origin Matches by Feature Match');

figure;showMatchedFeatures(im1, im2, inliers(:,1:2), inliers(:,3:4), 'montage');
title('Refined Matches by CAGE');