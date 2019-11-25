package com.web._init.view;

import java.text.DecimalFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.web._init.viewResolver.AbstractITextPdfView;
import com.web.event.model.OrderEventBean;

public class SingleMemberPdfView extends AbstractITextPdfView {

	final String fontPath = "c:\\windows\\fonts\\kaiu.ttf";
	BaseFont bfChinese;
	Font titleFont;

	Font normalFont;
	Font italicFont;
	Font underlineFont;

	// 設定字型物件
	private void init() throws Exception {
		bfChinese = BaseFont.createFont(fontPath, "Identity-H", BaseFont.NOT_EMBEDDED);
		titleFont = new Font(bfChinese, 18, Font.BOLD);
		normalFont = new Font(bfChinese, 14, Font.NORMAL);
		italicFont = new Font(bfChinese, 12, Font.ITALIC);
		underlineFont = new Font(bfChinese, 40, Font.UNDERLINE);
	}

	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		init();
		// 處理文章式資料
		// processArticle(document);
		// 由新頁開始列印表格
		document.newPage();
		// 處理表格式資料		
		processTable(model, document, 0);

	}

	// 處理表格化資料
	private void processTable(Map<String, Object> model, Document document, int newLines) throws Exception {
		// 表格的前置資料
		for(int n=0; n < newLines; n++) {
			document.add( Chunk.NEWLINE );	
		}
			
		addTitle(document, "Dappei 活動電子票券憑證 ", titleFont);	
		addStringToParagraph(document, "e-tickets");
		document.add( Chunk.NEWLINE );	
//		String[] tableTitle = {"帳號", "姓名", "餘額", "生日"};
		PdfPTable table = createTable(model,1);
		document.add(table);
		}


	private PdfPTable createTable(Map<String, Object> model, int columnCount ) {
		PdfPTable table = new PdfPTable(columnCount); // PDF文件的直欄數量
		table.setTotalWidth(440f);
		table.setLockedWidth(true);
//		float[] widths = new float[] { 80f, 160f, 90f, 110f};
//		try {
//			table.setWidths(widths);
//		} catch (DocumentException e) {
//			e.printStackTrace();
//		}
//		setTableHeading(table, title); 
		setTableData(table, model);
		return table;
		// 處理表格的標頭 // .setVerticalAlignment(Element.ALIGN_MIDDLE);
		}

		private void setTableData(PdfPTable table, Map<String, Object> model) {
			System.out.println("model=" + model);
			@SuppressWarnings("unchecked")
			OrderEventBean oeb =  (OrderEventBean) model.get("orderEvent");
			
				MyTextPdfPCell cell1 = new MyTextPdfPCell();
				
				cell1.setPhrase(new Phrase("活動名稱:"+oeb.getEvent().getEventName(), normalFont));
//				cell1.setPhrase(new Phrase("活動時間/Time :", normalFont));
//				cell1.setPhrase(new Phrase("活動地點/Location :", normalFont));
//				cell1.setPhrase(new Phrase("票價/Price :", normalFont));
				
				table.addCell(cell1);
				//
//				MyTextPdfPCell cell2 = new MyTextPdfPCell();
//				cell2.setPhrase(new Phrase(m.getName(), normalFont));
//				table.addCell(cell2);
//				//
//				MyTextPdfPCell cell3 = new MyTextPdfPCell();
//				cell3.setHorizontalAlignment(Element.ALIGN_RIGHT);
//				Float bottomPadding = 5f; 
//				Float rightPadding = 15f; 
//				DecimalFormat df = new DecimalFormat("#,###.00");
//				String balanceString = df.format(m.getBalance());
//				cell3.setPhrase(new Phrase(balanceString , normalFont));
//				cell1.setPaddingBottom(8F);
//				cell3.setPaddingBottom(bottomPadding);
//				cell3.setPaddingRight(rightPadding );
//				table.addCell(cell3);
//				//
//				MyTextPdfPCell cell4 = new MyTextPdfPCell();
//				cell4.setPhrase(new Phrase(String.valueOf(m.getBirthday()), normalFont));
//				table.addCell(cell4);
				
			
		}

		private void setTableHeading(PdfPTable table, String[] title) {
			table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
			table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
			table.getDefaultCell().setBackgroundColor(BaseColor.LIGHT_GRAY);
			BaseColor color = new BaseColor(224, 224, 224);
			table.getDefaultCell().setBackgroundColor(color);
			for(int n = 0; n < title.length; n++) {
				PdfPCell cell1 = new PdfPCell();
				cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
				cell1.setPaddingBottom(8F);
				cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
				cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);
				cell1.setPhrase(new Phrase(title[n], titleFont));
				table.addCell(cell1);
			}
			
		}
		
		private void addTitle(Document document, String title, Font font) throws Exception {
			Paragraph pg1 = new Paragraph();
			pg1.setFont(font);
			pg1.setAlignment(Paragraph.ALIGN_CENTER);
			pg1.add(title);
			document.add(pg1);
		}

		private void addStringToParagraph(Document document, String textFile) throws Exception {
			Paragraph pg1 = new Paragraph();
			pg1.setFont(normalFont);
			pg1.add(textFile);
			document.add( Chunk.NEWLINE );
			document.add(pg1);
		}
		
//		private void addParagraph(Document document, String textFile, String charEncoding) throws Exception {
//			Paragraph pg1 = new Paragraph();
//			pg1.setFont(normalFont);
//			pg1.add(fileToString(textFile, charEncoding));
//			document.add( Chunk.NEWLINE );
//			document.add(pg1);
//		}

//		public String fileToString(String textFile, String charEncoding) throws Exception {
//			String msg = "";
//			try (
//				InputStream fis = context.getResourceAsStream(textFile);
//				InputStreamReader isr = new InputStreamReader(fis, charEncoding);
//				CharArrayWriter caw = new CharArrayWriter();
//			) {
//				char[] c = new char[8192];
//				int len = 0;
//				while ((len = isr.read(c)) != -1) {
//					caw.write(c, 0, len);
//				}
//				msg = caw.toString();
//			}
//			return msg;
//		}
		
		class MyTextPdfPCell extends PdfPCell{
			MyTextPdfPCell(){
		    	setBackgroundColor(BaseColor.LIGHT_GRAY);
		    	setPaddingBottom(8F);
		    	setHorizontalAlignment(Element.ALIGN_CENTER);
		    	setVerticalAlignment(Element.ALIGN_MIDDLE);
			}
		}
	
}
