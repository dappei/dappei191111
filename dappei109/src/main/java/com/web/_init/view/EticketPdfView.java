package com.web._init.view;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.web._init.viewResolver.AbstractITextPdfView;
import com.web.event.model.OrderEventBean;

public class EticketPdfView extends AbstractITextPdfView{		
	
	final String fontPath = "c:\\windows\\fonts\\kaiu.ttf";
	BaseFont bfChinese;
	Font titleFont;
	Font normalFont;
	
	// 設定字型物件
	private void init() throws Exception {
		bfChinese = BaseFont.createFont(fontPath, "Identity-H", BaseFont.NOT_EMBEDDED);
		titleFont = new Font(bfChinese, 22, Font.BOLD);
		normalFont = new Font(bfChinese, 14, Font.NORMAL);
	}
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document doc, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		init();
		OrderEventBean oeb =  (OrderEventBean) model.get("orderEvent");
         
        doc.add(new Paragraph("Dappei 活動電子票券憑證　e-ticket",titleFont));
        doc.add(new Paragraph("\n"));
        
        PdfPTable table = new PdfPTable(2);
        table.setWidthPercentage(100.0f);
        table.setWidths(new float[] {7.0f, 3.0f});
        table.setSpacingBefore(10);
         
        // write table row data
        MyTextPdfPCell cell1 = new MyTextPdfPCell();
        cell1.setPhrase(new Phrase("\n 活動名稱          :"+oeb.getEvent().getEventName()+
            	   				   "\n 活動時間/Time     :"+oeb.getEvent().getEventStartTime().substring(0, 16)+
            	   				   "\n 活動地點/Location :"+oeb.getEvent().getLocation()+
            	   				   "\n 數量/Quantity     :"+oeb.getQuantity()+
            	   				   "\n 票價/Price        :NT$"+oeb.getTotalprice()+"\n", normalFont));
        table.addCell(cell1);
        MyTextPdfPCell cell2 = new MyTextPdfPCell();
        cell2.setPhrase(new Phrase("電子票券使用須知:\n"
    			+ "1. 條碼為參加人憑證，請勿折疊、污損，每個條碼僅能掃描一次。\n"
    			+ "2. 票券有效狀態依Dappei系統驗證結果為準，主辦單位有最終解釋權。\n"
    			+ "3. 票券相關問題，請洽Dappei客服中心。", normalFont));
        table.addCell(cell2);
            
        doc.add(table);
         
    }
	class MyTextPdfPCell extends PdfPCell{
		MyTextPdfPCell(){
	    	setBackgroundColor(BaseColor.LIGHT_GRAY);
	    	setPaddingBottom(8F);
		}
	}
			
}
