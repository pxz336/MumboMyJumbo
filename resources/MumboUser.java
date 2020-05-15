package resources;

import java.util.ArrayList;

public class MumboUser {

	private String userID;
	
	String firstName;
	String lastName;
	String userName;
	
	int totalLikes;
	int totalViews;
	
	ArrayList profiles;
	
	
	public MumboUser(){
		totalLikes = 0;
		totalViews = 0;
		profiles = new ArrayList<MumboProfile>();
	}
	
}
