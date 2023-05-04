package kr.pitb.model;

public class MyCsvVO {
	//
   private String user_id;
   private String file_name;
   private String save_name;
   private String file_path;
   private String region;
   private String chartType;
   private String myID;
   private String save_date;

   public MyCsvVO(String user_id, String file_name, String save_name, String file_path, String region,
         String chartType , String myID, String save_date) {
      super();
      this.file_name = file_name;
      this.save_name = save_name;
      this.user_id = user_id;
      this.file_path = file_path;
      this.region = region;
      this.chartType = chartType;
      this.myID = myID;
      this.save_date = save_date;
   }
   
   
   

   public String getSave_date() {
	return save_date;
}




public void setSave_date(String save_date) {
	this.save_date = save_date;
}




public String getMyID() {
	return myID;
}




public void setMyID(String myID) {
	this.myID = myID;
}




public String getFile_path() {
      return file_path;
   }

   public void setFile_path(String file_path) {
      this.file_path = file_path;
   }

   public String getRegion() {
      return region;
   }

   public void setRegion(String region) {
      this.region = region;
   }

   public String getChartType() {
      return chartType;
   }

   public void setChartType(String chartType) {
      this.chartType = chartType;
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