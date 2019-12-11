package fts;

import java.util.Arrays;

public class BasicTool {

    public static void main(String[] args) {
        System.out.println("Tool started.");
        String lastSortedItem = Arrays.stream(args).sorted(String::compareToIgnoreCase).findFirst().orElse("Nothing");
        System.out.println("Java8 sorted value: " + lastSortedItem);
    }
}
