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
	
	ArrayList postComments;
	
	
	public MumboPost() {
		numLikes = 0;
		numDislikes = 0;
		numViews = 0;
		
		postComments = new ArrayList<PostComment>();
	}
	
	public MumboPost(String title, String content) {
		this();
		this.postTitle = title;
		this.postContent = content;
	}
	
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
	
	public boolean addComment(PostComment comment) { //not finished yet
		if (comment.comment.equals("")) {
			System.out.println("Cannot post blank comment");
			return false;
		} else {
			this.postComments.add(comment);
			return true;
		}
	}
	
}
