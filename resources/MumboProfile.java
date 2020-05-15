package resources;

import java.util.ArrayList;
import java.util.Date;

public class MumboProfile {

	private String userID;
	
	private String firstName;
	private String lastName;
	private String userName;
	
	private Date profCreateDate;
	
	String userPhoto; //Not sure how to implement photos yet, likely have to access database?
	
	ArrayList userPosts;
	ArrayList friendPosts;	
	ArrayList userFriends;
	
	
	public MumboProfile() { //Default Constructor
		userPosts = new ArrayList<MumboPost>();
		friendPosts = new ArrayList<MumboPost>();
		userFriends = new ArrayList<MumboUser>();
	}
	
	public MumboProfile(String firstName, String secondName, String userName) {		
		this(); //Runs default constructor
		
		this.firstName = firstName;
		this.lastName = secondName;
		this.userName = userName;
		
		profCreateDate = new Date();
	}
	
	public MumboProfile(String firstName, String secondName, String userName, String userPhoto) {
		this(firstName, secondName, userName); //Runs if photo is also given
		this.userPhoto = userPhoto;
	}
	
	public void addPost(MumboPost postToAdd, MumboUser poster) {
		if (poster.equals(this)) {
			userPosts.add(postToAdd);
		} else {
			friendPosts.add(postToAdd);
		}
	}
	
}
