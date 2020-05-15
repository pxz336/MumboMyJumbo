package resources;

public class PostComment {

	MumboUser poster;
	String comment;
	
	public PostComment() {
		
	}
	
	public PostComment(MumboUser user, String comment) {
		this.poster = user;
		this.comment = comment;
	}
	
}
