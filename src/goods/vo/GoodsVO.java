package goods.vo;

public class GoodsVO {
	private String gdbCd;
	private int gdNum;
	
	private int gdpSum;
	
	private String gdCd;
	private String gdSort;
	private String gdSortCode; // 테이블에 없는 필드. gdSort 세팅시 자동 세팅.
	private String gdName;
	private int gdPrice;
	private int gdStock;
	private String gdImg;
	private String gdImgPath;
	private String gdDimg;
	private String gdDimgPath;
	private String gdInfo;
	private String gdChk;
	
	private String gdbChk;
	private String memId;
	private int sum; // 판매개수
	
	public GoodsVO() {}
	
	public GoodsVO(String gdSort, String gdName, int gdPrice, int gdStock, String gdImg, String gdDimg, String gdInfo) {
		super();
		this.gdSort = gdSort;
		this.gdName = gdName;
		this.gdPrice = gdPrice;
		this.gdStock = gdStock;
		this.gdImg = gdImg;
		this.gdDimg = gdDimg;
		this.gdInfo = gdInfo;
		
		switch(gdSort) {
		case "인형":
			this.gdSortCode = "A"; break;
		case "모자":
			this.gdSortCode = "B"; break;
		case "완구":
			this.gdSortCode = "C"; break;
		case "문구":
			this.gdSortCode = "D"; break;
		default: 
			this.gdSortCode = "E";
		}
		
		if(gdImg.contains("WebContent")) {
			this.gdImgPath = gdImg.substring(gdImg.indexOf("WebContent")+10);
		}		
		if(gdDimg.contains("WebContent")) {
			this.gdDimgPath = gdDimg.substring(gdDimg.indexOf("WebContent")+10);
		}
	}

	public String getGdCd() {
		return gdCd;
	}

	public void setGdCd(String gdCd) {
		this.gdCd = gdCd;
	}

	public String getGdSort() {
		return gdSort;
	}

	public void setGdSort(String gdSort) {
		this.gdSort = gdSort;
		
		switch(gdSort) {
		case "인형":
			this.gdSortCode = "A"; break;
		case "모자":
			this.gdSortCode = "B"; break;
		case "완구":
			this.gdSortCode = "C"; break;
		case "문구":
			this.gdSortCode = "D"; break;
		default: 
			this.gdSortCode = "E";
		}
	}

	public String getGdName() {
		return gdName;
	}

	public void setGdName(String gdName) {
		this.gdName = gdName;
	}

	public int getGdPrice() {
		return gdPrice;
	}

	public void setGdPrice(int gdPrice) {
		this.gdPrice = gdPrice;
	}

	public int getGdStock() {
		return gdStock;
	}

	public void setGdStock(int gdStock) {
		this.gdStock = gdStock;
	}

	public String getGdImg() {
		return gdImg;
	}

	public void setGdImg(String gdImg) {
		this.gdImg = gdImg;
		if(gdImg.contains("WebContent")) {
			this.gdImgPath = gdImg.substring(gdImg.indexOf("WebContent")+10);
		}
	}

	public String getGdDimg() {
		return gdDimg;
	}

	public void setGdDimg(String gdDimg) {
		this.gdDimg = gdDimg;
		if(gdDimg.contains("WebContent")) {
			this.gdDimgPath = gdDimg.substring(gdDimg.indexOf("WebContent")+10);
		}		
	}

	public String getGdInfo() {
		return gdInfo;
	}

	public void setGdInfo(String gdInfo) {
		this.gdInfo = gdInfo;
	}

	public String getGdChk() {
		return gdChk;
	}

	public void setGdChk(String gdChk) {
		this.gdChk = gdChk;
	}
	
	public String getGdSortCode() {
		return gdSortCode;
	}

	public void setGdSortCode(String gdSortCode) {
		this.gdSortCode = gdSortCode;
		
		switch(gdSortCode) {
		case "A":
			this.gdSort = "인형"; break;
		case "B":
			this.gdSort = "모자"; break;
		case "C":
			this.gdSort = "완구"; break;
		case "D":
			this.gdSort = "문구"; break;
		case "E":
			this.gdSort = "기타";
		}
	}
	
	public String getGdImgPath() {
		return gdImgPath;
	}

	public void setGdImgPath(String gdImgPath) {
		this.gdImgPath = gdImgPath;
	}

	public String getGdDimgPath() {
		return gdDimgPath;
	}

	public void setGdDimgPath(String gdDimgPath) {
		this.gdDimgPath = gdDimgPath;
	}
	
	
	
	public String getGdbCd() {
		return gdbCd;
	}

	public void setGdbCd(String gdbCd) {
		this.gdbCd = gdbCd;
	}

	public int getGdNum() {
		return gdNum;
	}

	public void setGdNum(int gdNum) {
		this.gdNum = gdNum;
	}

	public String getGdbChk() {
		return gdbChk;
	}

	public void setGdbChk(String gdbChk) {
		this.gdbChk = gdbChk;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getGdpSum() {
		return gdpSum;
	}

	public void setGdpSum(int gdpSum) {
		this.gdpSum = gdpSum;
	}

	public int getSum() {
		return sum;
	}
	
	public void setSum(int sum) {
		this.sum = sum;
	}
	

	@Override
	public String toString() {
		return "GoodsVO [gdbCd=" + gdbCd + ", gdNum=" + gdNum + ", gdpSum=" + gdpSum + ", gdCd=" + gdCd + ", gdSort="
				+ gdSort + ", gdSortCode=" + gdSortCode + ", gdName=" + gdName + ", gdPrice=" + gdPrice + ", gdStock="
				+ gdStock + ", gdImg=" + gdImg + ", gdImgPath=" + gdImgPath + ", gdDimg=" + gdDimg + ", gdDimgPath="
				+ gdDimgPath + ", gdInfo=" + gdInfo + ", gdChk=" + gdChk + ", gdbChk=" + gdbChk + ", memId=" + memId
				+ "]";
	}

	public static void main(String[] args) {
		System.out.println("테스트입니다");
		GoodsVO gd = new GoodsVO();
		gd.setGdSort("인형");
		System.out.println(gd.getGdSort() +" "+ gd.getGdSortCode());
		
		String path = "D:\\4.HighJava\\Workspace\\LalalandProject\\WebContent\\images\\goods/dfc2f54e950a49d8bfdc4fe41625d37d.jpg";
		path = path.substring(path.indexOf("WebContent")+10);
		System.out.println(path);
	}
}
	

