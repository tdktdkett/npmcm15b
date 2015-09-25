function dfadjustlayout(dffig,showctrl,first)
%ADJUSTLAYOUT Adjust layout of buttons and graph in figure window


%   Copyright 2003-2013 The MathWorks, Inc.

if nargin<3
    first = false; % first adjustment after creating figure
end

% Get some measurements
fpos = get(dffig,'Position');
fwidth = fpos(3);
fheight = max(1,fpos(4));

% Adjust selection controls at top
hsel = getappdata(dffig,'selectioncontrols');
lmargin = 0;
if ~isempty(hsel)
   % If there are no selection controls, don't try to compute their height
   emax = zeros(1,4);
   allpos = get(hsel, 'Position');
   allpos = vertcat(allpos{:});
   allextent = get(hsel, 'Extent');
   allextent = vertcat(allextent{:});
   maxheight = max(allextent(2:end,4));   % max height of non-frame controls
end
for j=2:2:length(hsel)
   % Adjust label
   p = allpos(j,:);
   e = allextent(j,:);
   p(1) = lmargin + 5;
   p(2) = fheight-1.45*maxheight;
   p(3) = e(3);
   p(4) = maxheight;
   lmargin = p(1) + p(3);
   set(hsel(j),'Position',p);
   emax = max(emax,e);
   labelwidth = e(3);
   
   % Adjust drop-down
   p = get(hsel(j+1),'Position');
   e = get(hsel(j+1),'Extent');
   p(1) = lmargin + 5;
   p(2) = fheight-1.25*maxheight;
   p(3) = max(1.25*e(3),2.25*labelwidth);
   p(4) = maxheight;
   lmargin = p(1) + p(3) + 20;
   set(hsel(j+1),'Position',p);
   emax = max(emax,e);
   fwidth = max(fwidth,1+p(1)+p(3)); % make sure control fits
end
if ~isempty(hsel)
   % Get position of the base of the frame containing these controls
   framebase = max(1, fheight-1.6*maxheight);
   p = [1, framebase, fwidth, 1.6*maxheight];
   set(hsel(1),'Position',p);
else
   % Say the base of this frame is right at the top of the figure
   framebase = fheight;
end

% Adjust all button positions below selection controls
hbuttons = getappdata(dffig,'buttoncontrols');
if isempty(hbuttons)
   % If there are no buttons, say their base is right at the frame
   buttonbase = framebase;
else
   % If there are buttons, compute the height of their base
   nbuttons = length(hbuttons);
   extents = get(hbuttons,'Extent');
   extents = vertcat(extents{:});
   bheight = 1.5 * extents(1,4);  % 1.5 * text height
   gutter = bheight/4;            % between buttons
   margin = bheight/2;            % around text within button
   bwidth = extents(:,3)' + 2*margin;
   totalwidth = sum(bwidth) + gutter*(nbuttons-1);
   startpos = max(0, (fwidth/2) - (totalwidth/2));
   bleft = startpos + [0, cumsum(bwidth + gutter)];
   buttonbase = max(1, framebase-bheight-gutter);
   for j=1:nbuttons
      pos = [bleft(j), buttonbase, bwidth(j), bheight];
      set(hbuttons(j), 'Position',pos);
   end
end

% Position the axes in the remaining area
ax = get(dffig,'CurrentAxes');
if first
    set(dffig,'Position',[fpos(1:2),fwidth,fheight]);
    drawnow; % needed to insure axpos is correct relative to new fpos
end
p1 = [0, 0, max(1,fwidth), max(1,buttonbase)];
axpos = hgconvertunits(dffig,p1,'pixels',get(ax,'units'),dffig);

set(ax,'OuterPosition',axpos);

if nargin<2
   showctrl = dfgetset('showaxlimctrl');
end
if isequal(showctrl,'on')
   dfaxlimctrl(dffig,'off');
   dfaxlimctrl(dffig,'on');
end
