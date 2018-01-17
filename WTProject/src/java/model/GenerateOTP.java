/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.*;


/**
 *
 * @author Vinayak
 */
public class GenerateOTP {
    
    public static String gen() {
    
        List<Integer> numbers = new ArrayList<>();
        for(int i = 0; i < 10; i++){
            numbers.add(i);
        }
    Collections.shuffle(numbers);


        String result = "";
        for(int j = 0; j < 4; j++){
            result += numbers.get(j).toString();
         }
        
    return result;
   
    }
     
}
