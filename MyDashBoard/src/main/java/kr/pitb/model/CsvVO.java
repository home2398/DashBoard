package kr.pitb.model;

public class CsvVO {
	
	private String fileId;
	private String originalName;
	
	public CsvVO(String fileId, String originalName) {
		super();
		this.fileId = fileId;
		this.originalName = originalName;
	}
	
	public CsvVO() {
		
	}

	public String getFileId() {
		return fileId;
	}

	public void setFileId(String fileId) {
		this.fileId = fileId;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	
	
	
}
