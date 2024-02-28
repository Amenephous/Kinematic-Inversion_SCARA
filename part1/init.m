clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');
clik_inverse;
sim('clik_inverse.mdl', t);

SCARA_VR_VISUALIZE(tracking_q', false);
%SCARA_VR_VISUALIZE(squeeze(q(:,1,:)), false); %q values are coming as 2D

% Please wait for the Scara_vr_visualize to end to see the operation space errors and
% joint values graph 
visualize_results