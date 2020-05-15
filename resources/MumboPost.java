package resources;

import java.util.ArrayList;

public class MumboPost {

	MumboUser postCreator;	
	private String postID;
	
	int numLikes;
	int numDislikes;
	int numViews;
	
	String postTitle;
	String postContent;
	
	ArrayList postComments = new ArrayList<String>();	
	
	
	public void addLike() {
		numLikes++;
	}
	
	public void removeLike() {
		numLikes--;
	}
	
	public void addDislike() {
		numDislikes++;
	}
	
	public void removeDislike() {
		numDislikes--;
	}
	
}
