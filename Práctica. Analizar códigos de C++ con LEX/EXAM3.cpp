#include <iostream>
#include <stdlib.h>
#include <math.h>
#include "coordenadas.h"

using namespace std;

main(){
	system("color 4f");
	gotoxy(109,0);cout<<"20/05/2022";
	gotoxy(1,0);cout<<"Cesar Rodriguez Garcia";
	gotoxy(55,2);cout<<"EXAMEN TERCER PARCIAL";
    gotoxy(50,3);cout<<"PROGRAMA DEL TEOREMA DE EUCLIDES";
    gotoxy(30,4);cout<<"Hola. Aqui podras calculas el MCD (Maximo Comun Divisor) de dos numeros";
	gotoxy(10,7);cout<<"Por favor, introduzca su Dividendo:  ";
    int Divide;
    cin>>Divide;
    gotoxy(10,8);cout<<"Ahora, introduzca el Divisor:  ";
    int Divisor;
    cin>>Divisor;
    int Resto = Divide%Divisor;
    
    if(Resto == 0){
       cout<<"El MCD es", Divisor;
       }
       
    while(!Resto == 0){
    	
     Divide = Divisor;
     Divisor = Resto;
     Resto = Divide%Divisor;
     
     if(Divide%Divisor == 0){
     	gotoxy(6,14);cout<<"El MCD es: ";
        gotoxy(16,14);cout<<("El MCD es: ", Divisor);
        break;
     }
    }
 return 0;
}
