data = csvread('fssp.csv',0,1);

fh = figure(1);

set(fh,'Position', [0, 0, 1200, 500]);
set(fh, 'color', 'white');

x = data(1,:);
name  = ['ta021', 'ta041', 'ta051', 'ta071'];

plot(x, data(3,:),'k-diamond','MarkerSize', 10, 'LineWidth', 1.0); 
hold on;
plot(x, data(5,:),'k-+','MarkerSize', 10, 'LineWidth', 1.0); 
hold on;
plot(x, data(6,:),'k-X','MarkerSize', 10, 'LineWidth', 1.0);
hold on;
plot(x, data(8,:),'k-square','MarkerSize', 10, 'LineWidth', 1.0); 

axis([-0.05, 1.05, -0.0005, 0.006]); 
legend('ta021', 'ta041', 'ta051', 'ta071', 'Location', 'Best');

grid on; 

xlabel( 'Probability of EHM', 'FontSize', 12 );
ylabel( 'Difference', 'FontSize', 12, 'Rotation', 90 );
export_fig ../img/sweep_pfsp -eps 