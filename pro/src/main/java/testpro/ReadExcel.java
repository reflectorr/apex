package testpro;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.ArrayList;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;


public class ReadExcel {	
	
		String path = "C:\\Users\\user\\Desktop\\pro";	//파일 경로 설정
		String filename = "ja.xls";	//파일명 설정
		

	public ArrayList<Chinese> readExcel(String path,String filename) {
		
		ArrayList<Chinese> chList = new ArrayList<Chinese>();
		try {
		FileInputStream file = new FileInputStream(path+filename);
		HSSFWorkbook workbook = new HSSFWorkbook(file);
		NumberFormat f = NumberFormat.getInstance();
		f.setGroupingUsed(false);	//지수로 안나오게 설정
		System.out.println("연결성공");
		

		
		//시트 갯수
		int sheetNum = workbook.getNumberOfSheets();
		
		for(int s = 0; s < sheetNum; s++) {
			HSSFSheet sheet = workbook.getSheetAt(s);
			//행 갯수
			int rows = sheet.getPhysicalNumberOfRows();
			
			for(int r = 0 ; r < rows ; r++) {
				HSSFRow row = sheet.getRow(r);
				
				int cells = row.getPhysicalNumberOfCells();
			
				Chinese ch = new Chinese();
//				System.out.print("|	"+r+"	|");
				for(int c = 0 ; c < cells; c++) {
					HSSFCell cell = row.getCell(c);
					
					String value = "";
									
					if(cell!=null) {
						//타입 체크
						switch(cell.getCellType()) {
						case STRING:
							value = cell.getStringCellValue();
							break;
						case NUMERIC:
							value = f.format(cell.getNumericCellValue())+"";
							break;
						case BLANK:
							value = cell.getBooleanCellValue()+"";
							break;
						case ERROR:
							value = cell.getErrorCellValue()+"";
							break;
						}
										
					}
					
					switch(c) {
					case 0:
						ch.setCno(value);
						 break;
					case 1:
						ch.setChi(value);
						 break;
					case 2:
						ch.setMean(value);
						 break;
					case 3:
						ch.setSound(value);
						 break;
					case 5:
						ch.setRating(value);
						 break;				 
					}
					
				}

				chList.add(ch);
				
				
			}
			
			
		}
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e){
			e.printStackTrace();
		}
		
			
		return chList; 
		
		
	}
}
