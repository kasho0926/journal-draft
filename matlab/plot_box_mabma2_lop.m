EHM = [2 3 2 3 2 1 3 1 3];
EM3 = [1 1 1 1 2 2 1 2 1];
NHM = [3 2 3 2 2 3 2 3 2];

fh = figure(1);

set(fh,'Position', [0, 0, 500, 500]);
set(fh, 'color', 'white');

D = [EHM; EM3; NHM];
h = boxplot(D','Labels',{'EHBSA','MABMA-UCB','NHBSA'});
set(h,{'linew'},{3})

set(gca,'ytick',1:4);

ylabel( 'Rank', 'FontSize', 12, 'Rotation', 90 );
export_fig ../img/mabma2_lop -eps 