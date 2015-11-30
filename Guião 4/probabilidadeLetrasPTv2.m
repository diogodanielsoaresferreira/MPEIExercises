function [contador1,all,x1,x2] = probabilidadeLetrasPT(ficheiro)
% exemplo de uso  [ps,letras] = probabilidadeLetrasPT('pg21209.txt')
% assumindo apenas letras  


%  colocar a 1 para ter mais informa��o durante a execu��o
debug =0;

%%
lower='abcdefghijklmnopqrstuvwxyz������������';   
upper='ABCDEFGHIJKLMNOPQRSTUVWXYZ������������';
all=strcat(lower,upper);
% abrir ficheiro para leitura
fid=fopen(ficheiro);

% arrays para contagem
contador1=zeros(length(lower)+length(upper),length(lower)+length(upper));

%
totalLetras=0;

%  ler todo o ficheiro
while 1    
    linha=fgetl(fid);
    
    if ~ischar(linha), break, end
    if debug 
        fprintf(1,'lido = |%s|  length= %d \n',linha,length(linha));    
    end
    
    %contar sempre os carriage return
    if length(linha)>0
        linha=[linha sprintf('\n')];
    end
    
    if length(linha)==1
        fprintf (1, 'length =1  !!! \n');
    end

    if debug
        fprintf(1,'para processar = |%s| \n',linha);
    end
    
    
    totalLetras=totalLetras+ length(linha);
    

    for k=2:length(linha)
        i=find(all==linha(1,k-1));
        j=find(all==linha(1,k));
        if ~(isempty(i) & isempty(j))
            contador1(i,j)=contador1(i,j)+1;
        end
    end


  
         
  
  if debug 
    fprintf(1,'letras processadas = %d \n',totalLetras);
  end
   
end

fclose(fid);

 

%% mostrar
 
% 
% clf
% 
% subplot(211)
% bar(1:length(contador1),contador1/totalLetras)
% title('minusc')
% set(gca,'XTick',1:length(contador1))
% set(gca,'XTickLabel',cellstr(lower'))
% ax=axis;
%   
% subplot(212)
% bar(1:length(contador2),contador2/totalLetras)
% title('maiusc')
% set(gca,'XTick',1:length(contador2))
% set(gca,'XTickLabel',cellstr(upper'))
% ax2=axis;
% ax2(4)=ax(4)
% axis(ax2)
%   
%  
% %%  valores a devolver
% contagens=[contador1 contador2]
% ps= contagens/totalLetras;
% ps=ps/sum(ps) ;  %  para garantir que temos fpm
% 
% letras =[lower upper]
% 
%  

x1=sum(contador1)'
x2=sum(contador1,2)
