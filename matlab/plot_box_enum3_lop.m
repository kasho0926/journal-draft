EHM = [2 3 5 4 4];
EM2 = [5 2 2 1 3];
EM3 = [4 5 3 3 5];
NHM = [1 4 4 5 1];
PL = [3 1 1 2 2];

fh = figure(1);

set(fh,'Position', [0, 0, 500, 500]);
set(fh, 'color', 'white');

D = [EHM; EM2; EM3; NHM; PL];
h = boxplot(D','Labels',{'EHBSA','EM2','EM3','NHBSA','PL'});
set(h,{'linew'},{3})

set(gca,'ytick',1:5);

ylabel( 'Rank', 'FontSize', 12, 'Rotation', 90 );
export_fig ../img/enum3_lop -eps 