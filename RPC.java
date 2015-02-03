import java.util.Random;
import java.util.Scanner;


public class RPC {

	/**
	 * @param args
	 */
	
	/*#Logic
	  #Rock > Scissors    Paper > Rock          Scissors > Paper
	  #Rock < Paper       Paper < Scissors      Scissors < Rock
	  #Rock = Rock        Paper = Paper         Scissors = Scissors*/
	  
	  
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println("Hello, we will play a game of Rock, Paper, Scissors. Please make a choice");
		Scanner choice = new Scanner(System.in);
		
		String P_choice = choice.next().toLowerCase();
		System.out.println("You chose " + P_choice);
		int pnum = 0;
		
		
		switch(P_choice){
		
		case "rock":
			pnum = 1;
			break;
			
		case "paper":
			pnum = 2;
			break;
			
		case "scissors":
			pnum = 3;
			break;
			
		default:
		System.out.println("You entered an invalid option");
		break;
		
		}
		
		Random RD = new Random();
		int cnum = RD.nextInt(3) + 1;
		String C_choice = "";
		
		
		
		
		switch(cnum){
		
		case 1:
			C_choice = "rock";
			break;
			
		case 2:
			C_choice = "paper";
			break;
		case 3:
			C_choice = "scissors";
			break;
			default:
				System.out.println("You entered an invalid option");
				break;
		}
	
		if (pnum == cnum){
			
			System.out.println(P_choice + " vs " + C_choice + " Draw");
		}
		
		else if (pnum == 1 && cnum == 2){
			
			System.out.println(P_choice + " vs " + C_choice + " You Lose");
		}
		
		else if (pnum == 1 && cnum == 3){
			
			System.out.println(P_choice + " vs " + C_choice + " You Win");
		}
		
		else if (pnum == 2 && cnum == 1){
			
			System.out.println(P_choice + " vs " + C_choice + " You Win");
		}
		
		else if (pnum == 2 && cnum == 3){
			
			System.out.println(P_choice + " vs " + C_choice + " You Lose");
		}
		else if (pnum == 3 && cnum == 1){
			
			System.out.println(P_choice + " vs " + C_choice + " You Lose");
		}
		
		else if (pnum == 3 && cnum == 2){
			
			System.out.println(P_choice + " vs " + C_choice + " You Win");
		}
		
		
		
	}

}
