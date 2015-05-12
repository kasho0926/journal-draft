EHM = [2 2 1 3 4 3 3 1 3 4];
UCB = [2 2 2 2 1 1.5 1.5 2 2 1];
UCBT = [2 2 3 1 2 1.5 1.5 3 1 2];
NHM = [4 4 5 4 3 4 4 5 4 3];
PL = [5 5 4 5 5 5 5 4 5 5];

fh = figure(1);

set(fh,'Position', [0, 0, 700, 500]);
set(fh, 'color', 'white');

D = [EHM; UCB; UCBT; NHM; PL];
h = boxplot(D','Labels',{'EHBSA','MABMA-UCB','MABMA-UCBT','NHBSA','PLEDA'});
set(h,{'linew'},{3})

set(gca,'ytick',1:5);

ylabel( 'Rank', 'FontSize', 12, 'Rotation', 90 );
export_fig ../img/mabma3_vrptw -eps 