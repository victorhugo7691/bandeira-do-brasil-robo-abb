MODULE Module1
	!Ponto de seguranca de seguranca estabelecido
    CONST robtarget pontoSeguranca:=[[553.65,-0.00,297.00],[0.725375,3.6363E-9,0.688354,1.73767E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	
    !Ponto de referencia para o inicio das figuras geometricas
    CONST robtarget pontoReferencia:=[[553.65,-0.00,171.00],[0.707107,4.08992E-9,0.707106,1.72755E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	
    !***********************************************************
    ! Module:  Module1
    ! Description: Bandeira do Brasil
    ! Author: Victor Hugo
    ! Version: 1.0
    !***********************************************************
    
    PROC main() !Inicio da procedure principal
        MoveL pontoSeguranca, v1000, fine, tool0; !Movimentacao de forma linar para o ponto de seguranca
        retangulo pontoReferencia; !Executa a procedure retangulo passando parametro
        MoveL pontoSeguranca, v1000, fine, tool0; !Movimentacao de forma linar para o ponto de seguranca
        losango pontoReferencia; !Executa a procedure losango passando parametro
        MoveL pontoSeguranca, v1000, fine, tool0; !Movimentacao de forma linar para o ponto de seguranca
        circulo pontoReferencia; !Executa a procedure circulo passando parametro
        MoveL pontoSeguranca, v1000, fine, tool0; !Movimentacao de forma linar para o ponto de seguranca
        
    ENDPROC  !Fim da procedure principal
    
    PROC retangulo(robtarget ponto) !Inicio da procedure retangulo
        MoveL ponto, v1000, fine, tool0; !Se movimenta para o ponto de referencia
        MoveL Offs(ponto, 60,0,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
        MoveL Offs(ponto, 60,-100,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
        MoveL Offs(ponto, 0,-100,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
        MoveL ponto, v1000, fine, tool0; !Retorna para o ponto de referencia
    ENDPROC !Fim da procedure retangulo
    
    PROC losango(robtarget ponto) !Inicio da procedure losango
         MoveL Offs(ponto, 30,-10,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
         MoveL Offs(ponto, 50,-50,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
         MoveL Offs(ponto, 30,-90,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
         MoveL Offs(ponto, 10,-50,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
         MoveL Offs(ponto, 30,-10,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
    ENDPROC !Fim da procedure losango
    
    PROC circulo(robtarget ponto) !Inicio da procedure circulo
        MoveL Offs(ponto, 30,-35,0), v1000, fine, tool0; !Se afasta do ponto de referencia linearmente 
        MoveC Offs(ponto, 45, -50, 0), Offs(ponto, 30, -65, 0), v100, z10, tool0; !Inicia a circunferencia considerando o ponto de referencia, de modo a se afastar
        MoveC Offs(ponto, 15, -50, 0), Offs(ponto, 30,-35,0), v100, z10, tool0; !Continua a circunferencia considerando o ponto de referencia
        MoveJ Offs(ponto, 30,-35,0), v1000, fine, tool0; !Finaliza o circulo
    ENDPROC !Fim da procedure circulo
ENDMODULE