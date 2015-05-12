EHM = [1 3 2 2 2 2 3 2 3];
EM2 = [2 1 1 3 2 1 1 1 2];
NHM = [3 2 3 1 2 3 2 3 1];

fh = figure(1);

set(fh,'Position', [0, 0, 500, 500]);
set(fh, 'color', 'white');

D = [EHM; EM2; NHM];
h = boxplot(D','Labels',{'EHBSA','EM2','NHBSA'});
set(h,{'linew'},{3})

set(gca,'ytick',1:3);

ylabel( 'Rank', 'FontSize', 12, 'Rotation', 90 );
export_fig ../img/enum2_lop -eps 