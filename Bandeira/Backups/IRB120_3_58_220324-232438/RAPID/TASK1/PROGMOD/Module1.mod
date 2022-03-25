MODULE Module1
	CONST robtarget pontoSeguranca:=[[553.65,-0.00,297.00],[0.725375,3.6363E-9,0.688354,1.73767E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!CONST robtarget pontoInicial:=[[457.65,-0.00,513.00],[0.725375,3.6363E-9,0.688354,1.73767E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	CONST robtarget pontoRetangulo:=[[553.65,-0.00,171.00],[0.707107,4.08992E-9,0.707106,1.72755E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!***********************************************************
    ! Module:  Module1
    ! Description: Bandeira do Brasil
    ! Author: Victor Hugo
    ! Version: 1.0
    !***********************************************************
    PROC main()
        !MoveJ pontoInicial, v1000, z50, tool0;
        MoveL pontoSeguranca, v1000, z50, tool0;
        retangulo pontoRetangulo;
        MoveL pontoSeguranca, v1000, z50, tool0;
        losango pontoRetangulo;
        MoveL pontoSeguranca, v1000, z50, tool0;
        circulo pontoRetangulo;
        MoveL pontoSeguranca, v1000, z50, tool0;
        
    ENDPROC
    PROC retangulo(robtarget ponto)
        MoveL ponto, v1000, fine, tool0;
        MoveL Offs(ponto, 60,0,0), v1000, fine, tool0;
        MoveL Offs(ponto, 60,-100,0), v1000, fine, tool0;
        MoveL Offs(ponto, 0,-100,0), v1000, fine, tool0;   
        MoveL ponto, v1000, fine, tool0;
    ENDPROC
    PROC losango(robtarget ponto)
         MoveL Offs(ponto, 30,-10,0), v1000, fine, tool0;
         MoveL Offs(ponto, 50,-50,0), v1000, fine, tool0;
         MoveL Offs(ponto, 30,-90,0), v1000, fine, tool0;
         MoveL Offs(ponto, 10,-50,0), v1000, fine, tool0;
         MoveL Offs(ponto, 30,-10,0), v1000, fine, tool0;
    ENDPROC
    PROC circulo(robtarget ponto)
        MoveL Offs(ponto, 30,-35,0), v1000, fine, tool0;
        MoveC Offs(ponto, 45, -50, 0), Offs(pontoRetangulo, 30, -65, 0), v100, z10, tool0;
        MoveC Offs(ponto, 15, -50, 0), Offs(pontoRetangulo, 30,-35,0), v100, z10, tool0;
        MoveJ Offs(ponto, 30,-35,0), v1000, fine, tool0;
    ENDPROC
ENDMODULE