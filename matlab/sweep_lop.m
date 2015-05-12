data = csvread('lop.csv',0,1);
disp(data(2,:));

fh = figure(1);

set(fh,'Position', [0, 0, 1200, 500]);
set(fh, 'color', 'white');

x = data(1,:);
name  = ['ta021', 'ta031', 'ta041', 'ta051', 'ta061', 'ta071'];

plot(x, data(2,:),'k-diamond','MarkerSize', 10, 'LineWidth', 1.0); 
hold on;
plot(x, data(3,:),'k-square','MarkerSize', 10, 'LineWidth', 1.0); 
hold on;
plot(x, data(4,:),'k-X','MarkerSize', 10, 'LineWidth', 1.0);
hold on;
plot(x, data(5,:),'k-hexagram','MarkerSize', 10, 'LineWidth', 1.0); 

axis([-0.05, 1.05, -0.00005, 0.002]); 
legend('t65b11x', 't65d11x', 't65f11x', 't65n11x', 'Location', 'Best');

grid on; 

xlabel( 'Probability of EHM', 'FontSize', 12 );
ylabel( 'Difference', 'FontSize', 12, 'Rotation', 90 );
export_fig ../img/sweep_lop -eps 