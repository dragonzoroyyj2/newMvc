	<!--     ZXing Core: QR 코드 생성 -->
	<dependency>
    	<groupId>com.google.zxing</groupId>
    	<artifactId>core</artifactId>
    	<version>3.5.0</version>
	</dependency> 
	
	<!--  ZXing JavaSE: MatrixToImageWriter 등 Java 환경용 이미지 지원 -->
	<dependency>
    	<groupId>com.google.zxing</groupId>
    	<artifactId>javase</artifactId>
    	<version>3.5.0</version>
	</dependency>

	<!-- Apache POI (Excel 파일 처리 라이브러리) -->
	<dependency>
	    <groupId>org.apache.poi</groupId>
	    <artifactId>poi-ooxml</artifactId>
	    <version>3.17</version>
	</dependency>
	
	<!-- Apache POI OOXML 스키마 (XSSF 관련 스키마 처리) -->
	<dependency>
	    <groupId>org.apache.poi</groupId>
	    <artifactId>poi-ooxml-schemas</artifactId>
	    <version>3.17</version>
	</dependency>

	<!-- XMLBeans (POI에서 XML을 처리하는데 사용) -->
	<dependency>
	    <groupId>org.apache.xmlbeans</groupId>
	    <artifactId>xmlbeans</artifactId>
	    <version>2.6.0</version>
	</dependency>
	
	<dependency>
	    <groupId>net.sourceforge.jexcelapi</groupId>
	    <artifactId>jxl</artifactId>
	    <version>2.6.12</version>
	</dependency>




 package com.test.myapp.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

import jxl.write.Label;
import jxl.write.WritableImage;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

@Controller
public class QrController2 {

    private final ServletContext servletContext;

    public QrController2(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    @GetMapping("/test/excel")
    public void generateExcelWithQRCodes(HttpServletResponse response, HttpServletRequest request) throws IOException, WriteException {
        List<Map<String, String>> qrDataList = new ArrayList<>();
        qrDataList.add(createQrData("2025050101003", "가전제품", "TV", "http://example.com/1"));
        qrDataList.add(createQrData("2025050101004", "주방", "전자레인지", "http://example.com/2"));

        @SuppressWarnings("deprecation")
        String logoPath = servletContext.getRealPath("/resources/static/csc_logo.png");
        
        byte[] excelFile = createExcelFileWithQrCodes(qrDataList, logoPath);

        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=qrcode.xls");
        response.getOutputStream().write(excelFile);
    }

    private Map<String, String> createQrData(String label1, String label2, String label3, String url ) {
        Map<String, String> data = new HashMap<>();
        data.put("label1", label1);
        data.put("label2", label2);
        data.put("label3", label3);
        data.put("url", url);
        return data;
    }

    private byte[] createExcelFileWithQrCodes(List<Map<String, String>> qrDataList, String logoPath) throws IOException, WriteException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        WritableWorkbook workbook = jxl.Workbook.createWorkbook(byteArrayOutputStream);
        WritableSheet sheet = workbook.createSheet("QR Codes", 0);

        sheet.addCell(new Label(0, 0, "Label"));
        sheet.addCell(new Label(1, 0, "URL"));
        sheet.addCell(new Label(2, 0, "QR Code"));

        int rowIndex = 1;
        for (Map<String, String> qrData : qrDataList) {
            String label1 = qrData.get("label1");
            String label2 = qrData.get("label2");
            String label3 = qrData.get("label3");
            String url = qrData.get("url");

            sheet.addCell(new Label(0, rowIndex, label1));
            sheet.addCell(new Label(1, rowIndex, url));

            byte[] qrImage = generateQrCodeImageWithLogo(url, logoPath, label1, label2, label3);

            File tempFile = File.createTempFile("qr_code", ".png");
            ImageIO.write(ImageIO.read(new ByteArrayInputStream(qrImage)), "PNG", tempFile);

            WritableImage qrWritableImage = new WritableImage(2, rowIndex, 1, 1, tempFile);
            sheet.addImage(qrWritableImage);

            sheet.setRowView(rowIndex, 1200); // 행 높이 늘림 (단위: 1/20 pt)

            rowIndex++;
        }

        workbook.write();
        workbook.close();

        return byteArrayOutputStream.toByteArray();
    }

    private byte[] generateQrCodeImageWithLogo(String data, String logoPath, String label1, String label2, String label3) throws IOException {
        BufferedImage qrImage = generateQrCodeImage(data);
        BufferedImage logoImage = loadLogoFromWebapp(logoPath);

        int qrWidth = qrImage.getWidth();
        int qrHeight = qrImage.getHeight();
        int logoWidth = qrWidth / 5;
        int logoHeight = logoWidth;

        Graphics2D g2d = qrImage.createGraphics();
        int x = (qrWidth - logoWidth) / 2;
        int y = (qrHeight - logoHeight) / 2;
        g2d.drawImage(logoImage.getScaledInstance(logoWidth, logoHeight, Image.SCALE_SMOOTH), x, y, null);
        g2d.dispose();

        int labelHeight = 50;
        BufferedImage combined = new BufferedImage(qrWidth, qrHeight + labelHeight, BufferedImage.TYPE_INT_RGB);

        Graphics2D g = combined.createGraphics();
        g.setColor(Color.WHITE);
        g.fillRect(0, 0, combined.getWidth(), combined.getHeight());
        g.drawImage(qrImage, 0, 0, null);

        g.setColor(Color.BLACK);
        g.setFont(new Font("Arial", Font.PLAIN, 16));
        FontMetrics fm = g.getFontMetrics();

        String line1 = label1;
        String line2 = label2 + " - " + label3;

        int textY = qrHeight + fm.getAscent();
        g.drawString(line1, (qrWidth - fm.stringWidth(line1)) / 2, textY);
        g.drawString(line2, (qrWidth - fm.stringWidth(line2)) / 2, textY + fm.getHeight());

        g.dispose();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(combined, "PNG", baos);
        return baos.toByteArray();
    }

    private BufferedImage generateQrCodeImage(String data) throws IOException {
        try {
            QRCodeWriter qrCodeWriter = new QRCodeWriter();
            Map<EncodeHintType, Object> hints = new HashMap<>();
            hints.put(EncodeHintType.MARGIN, 1);
            hints.put(EncodeHintType.ERROR_CORRECTION, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel.M);

            BitMatrix bitMatrix = qrCodeWriter.encode(data, BarcodeFormat.QR_CODE, 400, 400, hints);

            BufferedImage image = new BufferedImage(400, 400, BufferedImage.TYPE_INT_RGB);
            for (int x = 0; x < 400; x++) {
                for (int y = 0; y < 400; y++) {
                    image.setRGB(x, y, bitMatrix.get(x, y) ? Color.BLACK.getRGB() : Color.WHITE.getRGB());
                }
            }

            return image;
        } catch (Exception e) {
            throw new IOException("QR 코드 생성 실패", e);
        }
    }

    private BufferedImage loadLogoFromWebapp(String logoPath) throws IOException {
    	
        File file = new File(logoPath);
        if (!file.exists()) {
            throw new IOException("로고 파일을 찾을 수 없습니다: " + logoPath);
        }
        return ImageIO.read(file);
    }
}

