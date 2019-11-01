import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Scanner;
import java.io.InputStream;



public class fileSplit {
    
    public static void readFile(File file) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
        String line = null;   
        while ((line = br.readLine()) != null) {
            System.out.println(line);
        }  
    }
    
    public static void writeFile(File file, String content) throws IOException {
        FileOutputStream fos = new FileOutputStream(file);
        OutputStreamWriter osw = new OutputStreamWriter(fos, "UTF-8");
        osw.write(content);
        osw.flush();
    }
    
    public static void appendFile(File file, String content) throws IOException {
        OutputStreamWriter out = new OutputStreamWriter(
                new FileOutputStream(file, true), // true to append
                "UTF-8"
                );
        out.write(content);
        out.close();
    }
    
    public String GetEnterpriseInfo(String code) {

        Connection cn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String s = "";
        byte b1[] = { 0x02 };
        byte b2[] = { 0x01 };
        String str1 = new String(b1);
        String str2 = new String(b2);
        try {
            cn = DBUtil.getConn();
            String sql = "select station_id,station_desc from  t_cfg_station_info where area_id like '%" + code + "%'";
            stm = cn.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                s += rs.getString(1) + str1 + rs.getString(2) + str2;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, stm, cn);
        }
        return s;
    }

    public String fileType(File file) {
        inputStream = new FileInputStream(file);
        byte[] head = new byte[headSize];
        inputStream.read(head);
        if (head[0] == -1 && head[1] == -2) {
            code = "UTF-16";
            System.err.println("文件编码错误: " + file.getName() + " : " + code);
        } else if (head[0] == -2 && head[1] == -1) {
            code = "Unicode";
            System.err.println("文件编码错误: " + file.getName() + " : " + code);
        } else if (head[0] == -17 && head[1] == -69 && head[2] == -65) {
            code = "UTF-8";
        } else {
            /*
             * utf-8编码格式 1字节 0xxxxxxx 2字节 110xxxxx 10xxxxxx 3字节 1110xxxx 10xxxxxx 10xxxxxx
             * 4字节 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx 5字节 111110xx 10xxxxxx 10xxxxxx
             * 10xxxxxx 10xxxxxx 6字节 1111110x 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx
             * ————————————————
             */
            // 检查无Bom的UTF-8
            int i = 0;
            code = "UTF-8 NoBom";
            while (i < headSize - 2) {
                if ((head[i] & 0x00FF) < 0x80) {
                    // (10000000)值小于0x80的为ASCII字符
                    i++;
                    continue;
                } else if ((head[i] & 0x00FF) < 0xC0) {
                    // (11000000)值在0x80和0xC0之间的,不是开头第一个
                    code = "Not UTF-8";
                    System.err.println("文件编码错误: " + file.getName() + " : " + code + "1000");
                    break;
                } else if ((head[i] & 0x00FF) < 0xE0) {
                    // (11100000)此范围内为2字节UTF-8字符
                    if ((head[i + 1] & (0xC0)) != 0x8) {
                        code = "Not UTF-8";
                        System.err.println("文件编码错误: " + file.getName() + " : " + code + "1100");
                        break;
                    } else
                        i += 2;
                } else if ((head[i] & 0x00FF) < 0xF0) {
                    // (11110000)此范围内为3字节UTF-8字符
                    if ((head[i + 1] & (0xC0)) != 0x80 || (head[i + 2] & (0xC0)) != 0x80) {
                        code = "Not UTF-8";
                        System.err.println(
                                "文件编码错误: " + file.getName() + " : " + code + "11100000" + (head[i + 1] & (0xC0)));
                        break;
                    } else
                        i += 3;
                } else {
                    code = "Not UTF-8";
                    System.err.println("文件编码错误: " + file.getName() + " : " + code + "1111");
                    break;
                }
            }
        }
    }

public class InputStreamCode {

    public static void main(String[] args) {


    }

}

    public static void fileReader(String fileName) throws Exception {

        File file = new File(fileName);
        Scanner sc = new Scanner(file);

        int rows = 1; // 记录行数

        String[] odd = new String[40]; // 奇数行数据
        String[] even = new String[40]; // 偶数行数据
        while (sc.hasNextLine()) {
            if ((rows % 2) == 1) { // 奇数行
                odd = sc.nextLine().split("\\s{1,}");  // split("\\2{1,}");不论字符中间有多少个空格都当作一个空格处理
                System.out.println("奇数行:" + rows);
                for (int i = 0; i < odd.length; i++) {
                    System.out.println(odd[i]);
                }
            } else if ((rows % 2) == 0) { // 偶数行
                even = sc.nextLine().split("\\s{1,}");
                System.out.println("偶数行:" + rows);
                for (int i = 0; i < even.length; i++) {
                    System.out.println(even[i]);
                }
            }
            rows++;
        }
        sc.close();
    }
    public static void main(String[] args) {

        StringBuffer buffer = new StringBuffer();

        String filpath = "C:\\Users\\yr0006\\Desktop\\271.txt";
        File file1 = new File(filpath);
        FileInputStream fis = null;
        InputStreamReader isr = null;
        BufferedReader br = null;
        try {
            fis = new FileInputStream(file1);
            isr = new InputStreamReader(fis, "UTF-8");
            br = new BufferedReader(isr);
            String line = null;
            while ((line = br.readLine()) != null) {
                buffer.append(line);
            }
            byte[] bytes = buffer.toString().getBytes("UTF-8");
            byte[] newbytes = new byte[bytes.length - 3];
            for (int i = 0; i < bytes.length; i++) {
                if (i >= 3) {// 一个加了BOM文件至少得有3byte
                    newbytes[i - 3] = bytes[i];
                }
            }
            for (int i = 0; i < newbytes.length; i++) {
                int key = newbytes[i];
                String keystring = Integer.toHexString(key);
                System.out.print(keystring.toUpperCase() + " ");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (br != null) {
                    br.close();
                }
                if (isr != null) {
                    isr.close();
                }
                if (fis != null) {
                    fis.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

            StringBuffer buffer = new StringBuffer();

            String filpath = "C:\\Users\\yr0006\\Desktop\\271.txt";
            File file1 = new File(filpath);
            FileInputStream fis = null;
            InputStreamReader isr = null;
            BufferedReader br = null;
            try {
                fis = new FileInputStream(file1);
                isr = new InputStreamReader(fis, "UTF-8");
                br = new BufferedReader(isr);
                String line = null;
                while ((line = br.readLine()) != null) {
                    buffer.append(line);
                }
                byte[] bytes = buffer.toString().getBytes("UTF-8");
                byte[] newbytes = new byte[bytes.length - 3];
                for (int i = 0; i < bytes.length; i++) {
                    if (i >= 3) {// 一个加了BOM文件至少得有3byte
                        newbytes[i - 3] = bytes[i];
                    }
                }
                for (int i = 0; i < newbytes.length; i++) {
                    int key = newbytes[i];
                    String keystring = Integer.toHexString(key);
                    System.out.print(keystring.toUpperCase() + " ");
                }

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (br != null) {
                        br.close();
                    }
                    if (isr != null) {
                        isr.close();
                    }
                    if (fis != null) {
                        fis.close();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        File file = new File("D:\\test.txt");
        writeFile(file, "");
        appendFile(file, "你好");
        appendFile(file, "!!!");
        readFile(file);
        File src = new File("a.txt");//创建源
		FileInputStream fis = null;//选择流
		try {//读取操作
			fis = new FileInputStream(src);
			int temp;
			while ((temp = fis.read()) != -1) {//读不到内容返回-1
				System.out.println((char)temp);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
		}
		finally {//释放资源
			try {
				if (fis != null) {//如果不是空指针释放资源
					fis.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        try {
            final InputStream inputStream = new FileInputStream(new File("test.txt"));
            Scanner scanner = new Scanner(inputStream, "UTF-8");
            System.out.println(scanner.useDelimiter("\\A").next());
        } catch (final IOException e) {
            e.printStackTrace();
        }
    }
}
