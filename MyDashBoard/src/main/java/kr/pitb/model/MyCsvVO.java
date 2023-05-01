package kr.pitb.model;

public class MyCsvVO {
	
	private String user_id;
	private String file_name;
	private String save_name;
	private String file_path;
	
	public MyCsvVO(String user_id, String file_name, String save_name, String file_path) {
		super();
		this.file_name = file_name;
		this.save_name = save_name;
		this.user_id = user_id;
		this.file_path = file_path;
		
	}

	public String File_path() {
		return file_path;
	}

	public void setFile_id(String file_path) {
		this.file_path = file_path;
	}

	public MyCsvVO() {
		
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getSave_name() {
		return save_name;
	}

	public void setSave_name(String save_name) {
		this.save_name = save_name;
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}
