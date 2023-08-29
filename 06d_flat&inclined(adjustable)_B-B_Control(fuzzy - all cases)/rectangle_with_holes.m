function [xy_data] = rectangle_with_holes(L,W,R,N)
    %xy_data = 0;
    if (R == 0 || N == 0)
     rectangle('Position',[0,0,L,W]);   
    end
    if(L == 0 || W==0)
        L = 5;
        W = 6;
    end
    xy_data_Rect = [L/2,0;
                    L,0 ;
 				    L,W ;
 				    0,W ; 
 				    0,0 ;
                    L/2,0];
    %rectangle('Position',[0,0,L,W]);
    %axis([-1 L+1 -1 W+1]);  
    
    if(R>0)
    xy_data_Cir = circle(L/2,W/2,R);
    end
    %xy_data_Cir = [cosd(270:-1:-90); sind(270:-1:-90)]'*R+[L 0];
    %xy_data_Cir_data = [xy_data_Cir.XData; xy_data_Cir.YData; xy_data_Cir.ZData];
    xy_data = [xy_data_Rect; xy_data_Cir];
    patch(xy_data(:,1),xy_data(:,2),[1 1 1]*0.95,'EdgeColor','none');
    hold on
    plot(xy_data(:,1),xy_data(:,2),'-','Marker','o','MarkerSize',4,'LineWidth',2);
end