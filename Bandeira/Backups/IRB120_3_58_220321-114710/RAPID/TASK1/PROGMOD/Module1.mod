MODULE Module1
	CONST robtarget pontoSeguranca:=[[553.65,-0.00,297.00],[0.725375,3.6363E-9,0.688354,1.73767E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	CONST robtarget pontoInicial:=[[457.65,-0.00,513.00],[0.725375,3.6363E-9,0.688354,1.73767E-8],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: Victor Hugo
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !Add your code here
        MoveJ pontoInicial, v1000, z50, tool0;
        MoveJ pontoSeguranca, v1000, z50, tool0;
    ENDPROC
ENDMODULE