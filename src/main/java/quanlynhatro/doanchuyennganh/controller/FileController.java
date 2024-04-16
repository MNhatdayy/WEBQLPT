package quanlynhatro.doanchuyennganh.controller;
import org.apache.poi.xwpf.usermodel.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@RestController
public class FileController {

    @GetMapping("/createWord")
    public String createWord() {
        // Đường dẫn tới file Word muốn tạo
        String filePath = "documentt.docx";

        try (XWPFDocument document = new XWPFDocument()) {
            // Tạo một tiêu đề
            XWPFParagraph title = document.createParagraph();
            title.setAlignment(ParagraphAlignment.CENTER);
            XWPFRun titleRun = title.createRun();

            titleRun.setText("CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM");

            XWPFParagraph subtitle = document.createParagraph();
            subtitle.setAlignment(ParagraphAlignment.CENTER);
            XWPFRun subtitleRun = subtitle.createRun();
            subtitleRun.setText("Độc lập – Tự do – Hạnh phúc");


            // Tạo một đoạn văn bản cho hợp đồng
            XWPFParagraph paragraph = document.createParagraph();
            XWPFRun run = paragraph.createRun();
            run.setText("Đây là nội dung của hợp đồng...");

            // Ghi file Word
            try (FileOutputStream out = new FileOutputStream(new File(filePath))) {
                document.write(out);
                return "File Word hợp đồng đã được tạo thành công!";
            } catch (IOException e) {
                return "Lỗi khi ghi file Word: " + e.getMessage();
            }
        } catch (IOException e) {
            return "Lỗi khi tạo file Word: " + e.getMessage();
        }
    }
}

}

