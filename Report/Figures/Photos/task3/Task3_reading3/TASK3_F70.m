function createfigure(XData1, YData1, XData2, YData2, XData3, YData3, YData4, YData5, Parent1)
%CREATEFIGURE(XDATA1, YDATA1, XDATA2, YDATA2, XDATA3, YDATA3, YDATA4, YDATA5, PARENT1)
%  XDATA1:  line xdata
%  YDATA1:  line ydata
%  XDATA2:  line xdata
%  YDATA2:  line ydata
%  XDATA3:  line xdata
%  YDATA3:  line ydata
%  YDATA4:  line ydata
%  YDATA5:  line ydata
%  PARENT1:  text parent

%  Auto-generated by MATLAB on 15-Aug-2020 16:36:26

% Create figure
figure('Tag','DisplayPrintFigure1','OuterPosition',[135 28 1098 714]);

% uicontainer currently does not support code generation, enter 'doc uicontainer' for correct input syntax
% In order to generate code for uicontainer, you may use GUIDE. Enter 'doc guide' for more information
% uicontainer(...);

% uipanel currently does not support code generation, enter 'doc uipanel' for correct input syntax
% In order to generate code for uipanel, you may use GUIDE. Enter 'doc guide' for more information
% uipanel(...);

% Create axes
axes1 = axes('ColorOrder',...
    [1 1 0.0666666666666667;0.0745098039215686 0.623529411764706 1;1 0.411764705882353 0.16078431372549;0.392156862745098 0.831372549019608 0.0745098039215686;0.717647058823529 0.274509803921569 1;0.0588235294117647 1 1;1 0.0745098039215686 0.650980392156863],...
    'Tag','DisplayAxes1_RealMag');
hold(axes1,'on');

% Create hgtransform
hgtransform('HitTest','off','Matrix',[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1]);

% Create hgtransform
hgtransform('HitTest','off','Matrix',[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1]);

% Create hgtransform
hgtransform('HitTest','off','Matrix',[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1]);

% Create line
line(XData1,YData1,'Visible','off','HitTest','off',...
    'Tag','tcursors_xymarker1',...
    'MarkerFaceColor',[0.5 0.5 0.5],...
    'MarkerSize',8,...
    'Marker','o',...
    'LineWidth',2,...
    'LineStyle','none',...
    'Color',[1 1 1]);

% Create line
line(XData2,YData2,'Visible','off','HitTest','off',...
    'Tag','tcursors_xymarker2',...
    'MarkerFaceColor',[0.5 0.5 0.5],...
    'MarkerSize',8,...
    'Marker','o',...
    'LineWidth',2,...
    'LineStyle','none',...
    'Color',[1 1 1]);

% Create line
line(XData3,YData3,'DisplayName','LCL FILTER AND LOAD/1',...
    'Tag','DisplayLine1',...
    'LineWidth',0.75,...
    'Color',[1 1 0.0666666666666667]);

% Create line
line(XData3,YData4,'DisplayName','LCL FILTER AND LOAD/2',...
    'Tag','DisplayLine2',...
    'LineWidth',0.75,...
    'Color',[0.0745098039215686 0.623529411764706 1]);

% Create line
line(XData3,YData5,'DisplayName','LCL FILTER AND LOAD/3',...
    'Tag','DisplayLine3',...
    'LineWidth',0.75,...
    'Color',[1 0.411764705882353 0.16078431372549]);

% Create xlabel
xlabel(' ');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 0.300000000000001]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-264.501735964604 273.959946727103]);
% Uncomment the following line to preserve the Z-limits of the axes
% zlim(axes1,[-1 1]);
box(axes1,'on');
% Set the remaining axes properties
set(axes1,'ClippingStyle','rectangle','Color',[0 0 0],'FontSize',8,...
    'GridAlpha',0.4,'GridColor',...
    [0.686274509803922 0.686274509803922 0.686274509803922],...
    'TickLabelInterpreter','none','XColor',...
    [0.686274509803922 0.686274509803922 0.686274509803922],'XGrid','on',...
    'YColor',[0.686274509803922 0.686274509803922 0.686274509803922],'YGrid',...
    'on','ZColor',[0.686274509803922 0.686274509803922 0.686274509803922]);
% Create text
text('Parent',Parent1,'Tag','TimeOffsetStatus','Units','pixels',...
    'VerticalAlignment','bottom',...
    'FontSize',8,...
    'Position',[0 0 0],...
    'Color',[0.686274509803922 0.686274509803922 0.686274509803922],...
    'Visible','on');

