package org.com.mvc.appFilter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/qrcode/scan")
public class QrcodeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6991597222059839876L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // QR 코드에서 받은 결과
        String qrResult = request.getParameter("data");

        
       String qrUrl =  "http://172.30.1.98:8089/qrcode/scan?data=" + qrResult;
        
        // 응답할 콘텐츠 타입을 HTML로 설정
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // HTML 페이지 시작
        out.println("<!DOCTYPE html>");
        out.println("<html lang='ko'>");
        out.println("<head>");
        out.println("  <meta charset='UTF-8'>");
        out.println("  <meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        out.println("  <title>QR 코드 확인</title>");
        out.println("  <script src='https://cdn.jsdelivr.net/npm/qr-code-styling@1.5.0/lib/qr-code-styling.js'></script>");

        // ✅ 반응형 스타일
        out.println("  <style>");
        out.println("    body { font-family: Arial, sans-serif; background-color: #f4f4f9; margin: 0; padding: 0; }");
        out.println("    .open-btn { margin: 40px auto; display: block; padding: 12px 24px; font-size: 1rem; border: none; background-color: #4CAF50; color: white; border-radius: 6px; cursor: pointer; }");
        out.println("    .modal-overlay { display: none; position: fixed; top: 0; left: 0; width: 100vw; height: 100vh; background: rgba(0,0,0,0.6); z-index: 999; }");
        out.println("    .modal-content { background: #fff; padding: 24px; width: 90%; max-width: 420px; margin: 10vh auto; border-radius: 10px; text-align: center; box-shadow: 0 6px 20px rgba(0,0,0,0.2); }");
        out.println("    .modal-content h2 { font-size: 1.3rem; margin-bottom: 12px; }");
        out.println("    .modal-content p { font-size: 1rem; word-break: break-all; }");
        out.println("    #qr-container { margin: 20px auto; max-width: 200px; }");
        out.println("    .close-btn { padding: 12px 20px; background-color: #4CAF50; color: white; font-size: 1rem; border: none; border-radius: 5px; cursor: pointer; width: 100%; max-width: 200px; }");
        out.println("    .close-btn:hover { background-color: #3e8e41; }");

        // ✅ 모바일 화면 대응
        out.println("    @media (max-width: 480px) {");
        out.println("      .modal-content { padding: 16px; }");
        out.println("      .modal-content h2 { font-size: 1.1rem; }");
        out.println("      .modal-content p { font-size: 0.95rem; }");
        out.println("    }");
        out.println("  </style>");

        // ✅ 자바스크립트
        out.println("  <script>");
        out.println("    window.onload = function() {");
        out.println("      const qrUrl = `" + qrUrl + "`;");
        out.println("      const qrResult = `" + qrResult + "`;");
        //out.println("      const openBtn = document.getElementById('openModalBtn');");
        out.println("      const modal = document.getElementById('modal');");
        out.println("      const closeBtn = document.getElementById('closeModalBtn');");

        //out.println("      openBtn.onclick = function() {");
        
        out.println("  if (qrResult) {");
        
        out.println("        modal.style.display = 'block';");

        out.println("        const qrCode = new QRCodeStyling({");
        out.println("          width: 200, height: 200, type : 'svg', data: qrUrl,");
        out.println("          dotsOptions: { color: '#000', type: 'rounded' },");
        out.println("          backgroundOptions: { color: '#fff' },");
        out.println("          cornersSquareOptions: { type: 'extra-rounded' }");
        out.println("        });");

        out.println("        const container = document.getElementById('qr-container');");
        out.println("        container.innerHTML = '';"); // 기존 QR 제거
        out.println("        qrCode.append(container);");
        out.println("  }");

        out.println("      closeBtn.onclick = function() {");
        out.println("        modal.style.display = 'none';");
        out.println("      	 window.close(); ");
        out.println("      };");
        
        out.println("    };");       
      
        
        out.println("  </script>");
        out.println("</head>");
        out.println("<body>");

        // 버튼
        //out.println("<button id='openModalBtn' class='open-btn'>QR 코드 결과 보기</button>");

        // 레이어 팝업 구조
        out.println("<div class='modal-overlay' id='modal'>");
        out.println("  <div class='modal-content'>");

        if (qrResult != null && !qrResult.isEmpty()) {
        	out.println("    <h2>스캔한 QR 코드의 결과:</h2>");
        	out.println("    <p><strong>" + qrResult + "</strong></p>");
          
        } else {
        	out.println("    <h2>스캔한 QR 코드의 결과:</h2>");
            out.println("	 <p><strong>QR 코드 결과를 찾을 수 없습니다. 다시 시도해 주세요.</strong></p>");
        }
        
        out.println("    <div id='qr-container'></div>");
        out.println("    <button id='closeModalBtn' class='close-btn'>확인</button>");
        
        out.println("  </div>");
        out.println("</div>");

        out.println("</body>");
        out.println("</html>");
    }
}
