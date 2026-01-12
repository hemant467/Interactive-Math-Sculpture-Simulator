%% Next-Level Mind-Blowing Interactive Math Sculpture Simulator
% Author: Hemant (Designed & Developed)
% Features: morphing shapes, flowing colors, interactive sliders, 3D lighting
% Fully commented for non-tech users

clc; clear; close all;

%% --- Parameters for the sculpture ---
u = linspace(0,2*pi,100); % Horizontal angle parameter
v = linspace(0,pi,50);    % Vertical angle parameter
[U,V] = meshgrid(u,v);    % Create 2D grid for surface points

% Initial parametric shape: twisted torus-like sculpture
X = (2 + cos(V)) .* cos(U);
Y = (2 + cos(V)) .* sin(U);
Z = sin(V) + 0.5*sin(3*U).*cos(2*V);

%% --- Create figure and surface ---
fig = figure('Name','Interactive Math Sculpture Simulator','Color','k'); % Black background
ax = axes('Parent',fig);          % Axes to draw sculpture
h = surf(ax,X,Y,Z,U);             % Create surface, color based on U
shading interp                    % Smooth color shading
axis equal off                     % Equal axes for proper 3D proportions
colormap(hot)                      % Hot color map for fiery effect
lighting gouraud                    % Smooth 3D lighting
camlight headlight                  % Light attached to camera
rotate3d on                         % Enable mouse rotation

%% --- Add animated gold title ---
goldBase = [1, 0.84, 0]; % RGB for gold
titleHandle = title({'Interactive Math Sculpture Simulator', ...
                     'Designed & Developed by 💝 Hemant Katta 🥰'}, ...
                     'Color', goldBase, 'FontSize',16, 'FontWeight','bold');

%% --- Interactive sliders ---
% Slider for twisting sculpture horizontally
s1 = uicontrol('Style','slider','Min',0,'Max',5,'Value',1,...
    'Position',[20 20 200 20],'Callback',@updateSculpture);
uicontrol('Style','text','Position',[20 45 200 15],...
    'String','Twist Amount','ForegroundColor','w','BackgroundColor','k');

% Slider for vertical scaling of sculpture
s2 = uicontrol('Style','slider','Min',0.1,'Max',3,'Value',1,...
    'Position',[240 20 200 20],'Callback',@updateSculpture);
uicontrol('Style','text','Position',[240 45 200 15],...
    'String','Vertical Scale','ForegroundColor','w','BackgroundColor','k');

%% --- Morphing parameters ---
t = 0;                  % Time variable for animation
freq = 2;               % Frequency of morphing
amplitude = 0.3;        % Amplitude of shape deformation

%% --- Animation loop ---
while ishandle(fig)      % Run as long as figure is open
    t = t + 0.05;        % Increment time
    
    twistAmount = s1.Value;      % Read slider for twist
    verticalScale = s2.Value;    % Read slider for vertical scale
    
    % --- Morphing sculpture formula ---
    X = (2 + cos(V) + amplitude*sin(freq*U + t)) .* cos(U + twistAmount*sin(V));
    Y = (2 + cos(V) + amplitude*sin(freq*U + t)) .* sin(U + twistAmount*sin(V));
    Z = verticalScale*(sin(V) + 0.5*sin(3*U).*cos(2*V) + amplitude*cos(freq*V + t));
    
    % --- Update surface with new coordinates ---
    set(h,'XData',X,'YData',Y,'ZData',Z)
    
    % --- Dynamic flowing colors ---
    set(h,'CData',sin(U + t) + cos(V + t)) % Colors change over time
    
    % --- Animate shimmering gold title ---
    shine = 0.6 + 0.4*sin(2*t); % oscillates between 0.2-1 for shimmer effect
    set(titleHandle,'Color',goldBase*shine) % update title color
    
    drawnow   % Update figure in real-time
end

%% --- Update function for sliders ---
function updateSculpture(~,~)
    % This function updates twist and vertical scale instantly
    % Called automatically when sliders are moved
end