MODULE Module1
	CONST robtarget pontoSeguranca:=[[553.65,-0.00,297.00],[0.725375,3.6363E-9,0.688354,1.73767E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	CONST robtarget pontoInicial:=[[457.65,-0.00,513.00],[0.725375,3.6363E-9,0.688354,1.73767E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	CONST robtarget pontoRetangulo:=[[553.65,-0.00,171.00],[0.707107,4.08992E-9,0.707106,1.72755E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!***********************************************************
    ! Module:  Module1
    ! Description: Bandeira do Brasil
    ! Author: Victor Hugo
    ! Version: 1.0
    !***********************************************************
    PROC main()
        MoveJ pontoInicial, v1000, z50, tool0;
        MoveL pontoSeguranca, v1000, z50, tool0;
        retangulo;
        MoveL pontoSeguranca, v1000, z50, tool0;
        losango;
        MoveL pontoSeguranca, v1000, z50, tool0;
        circulo;
        MoveL pontoSeguranca, v1000, z50, tool0;
        
    ENDPROC
    PROC retangulo()
        MoveL pontoRetangulo, v1000, fine, tool0;
        MoveL Offs(pontoRetangulo, 60,0,0), v1000, fine, tool0;
        MoveL Offs(pontoRetangulo, 60,-100,0), v1000, fine, tool0;
        MoveL Offs(pontoRetangulo, 0,-100,0), v1000, fine, tool0;   
        MoveL pontoRetangulo, v1000, fine, tool0;
    ENDPROC
    PROC losango()
         MoveL Offs(pontoRetangulo, 30,-10,0), v1000, fine, tool0;
         MoveL Offs(pontoRetangulo, 50,-50,0), v1000, fine, tool0;
         MoveL Offs(pontoRetangulo, 30,-90,0), v1000, fine, tool0;
         MoveL Offs(pontoRetangulo, 10,-50,0), v1000, fine, tool0;
         MoveL Offs(pontoRetangulo, 30,-10,0), v1000, fine, tool0;
    ENDPROC
    PROC circulo()
        MoveL Offs(pontoRetangulo, 30,-35,0), v1000, fine, tool0;
        MoveC Offs(pontoRetangulo, 40, -45, 0), Offs(pontoRetangulo, 30, -65, 0), v1000, z10, tool0;
        MoveC Offs(pontoRetangulo, 20, -50, 0), Offs(pontoRetangulo, 30,-30,0), v1000, z10, tool0;
    ENDPROC
ENDMODULE