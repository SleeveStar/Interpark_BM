package spring.project.interpark.shoppingcart.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import spring.project.interpark.paging.PageMakerDTO;
import spring.project.interpark.paging.PagingDTO;
import spring.project.interpark.product.ProductDTO;
import spring.project.interpark.product.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@RequestMapping(value = "/selectProductAll", method = RequestMethod.GET)
	private String selectProductView(Model model) {

		model.addAttribute("list", productService.productSelectAll());

		return "./cart/product_selectAll";

	}

	@RequestMapping(value = "/selectProductAllPage", method = RequestMethod.GET)
	private String selectProductView(PagingDTO pagingDTO, Model model) throws Exception {

		List<ProductDTO> list = productService.productSelectAllPage(pagingDTO);

		model.addAttribute("list", list);

		PageMakerDTO pageMakerDTO = new PageMakerDTO();
		pageMakerDTO.setPagingDTO(pagingDTO);
		pageMakerDTO.setTotalCount(productService.listCount());
		model.addAttribute("pageMaker", pageMakerDTO);
		return "./cart/product_selectAll";

	}

	@RequestMapping(value = "/selectProductDetail", method = RequestMethod.GET)
	private String selectProductDetailView(Model model, ProductDTO productDTO) {
		model.addAttribute("list", productService.productSelectDetail(productDTO.getProductnumber()));
		logger.info("list", model);

		return "./cart/product_select_detail";

	}

	// 아래에는 영훈이형 파트

	@RequestMapping(value = "/product_selectdetail_view", method = RequestMethod.GET)
	public String detail(Model model, ProductDTO productDTO) throws IOException, Exception {
		model.addAttribute("productDTO", productService.detail(productDTO.getProductnumber()));
		return "./product/product_selectdetail_view";
	}

	@RequestMapping(value = "/product_insert", method = RequestMethod.GET)
	public String insert() {
		return "./product/product_insert";
	}

	@RequestMapping(value = "/product_insert", method = RequestMethod.POST)
	public String insertview(Model model, ProductDTO productDTO, MultipartFile file) {
		String fileExtension = "jpg";
		String uploadFolder = "C:\\spring_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\interpark_ver_0.4\\resources\\imgUpload";
		String uploadFolder1 = "C:\\spring_workspace\\interpark_ver_0.4\\src\\main\\webapp\\resources\\imgUpload";
		int uniqueName = productDTO.getProductnumber();
		File saveFile = new File(uploadFolder + "\\" + uniqueName + "." + fileExtension);
		File saveFile1 = new File(uploadFolder1 + "\\" + uniqueName + "." + fileExtension);
		boolean isExists = saveFile.exists();
		if (isExists) {
			logger.info("중복파일");
		} else {
			try {
				file.transferTo(saveFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		boolean isExists1 = saveFile1.exists();
		if (isExists1) {
			logger.info("중복파일");
		} else {
			try {
				file.transferTo(saveFile1);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("productinsert", productService.productSelectAll());
		productService.productInsert(productDTO);
		logger.info("productinsert", model);

		return "./product/product_insert_view";
	}

	@RequestMapping(value = "/product_select", method = RequestMethod.GET)
	public String productselect(PagingDTO pagingDTO, Model model) throws Exception {
		List<ProductDTO> list = productService.productSelectAllPage(pagingDTO);

		model.addAttribute("list", list);

		PageMakerDTO pageMakerDTO = new PageMakerDTO();
		pageMakerDTO.setPagingDTO(pagingDTO);
		pageMakerDTO.setTotalCount(productService.listCount());
		model.addAttribute("pageMaker", pageMakerDTO);
		
		return "./product/product_select";
	}

	@RequestMapping(value = "/product_update", method = RequestMethod.GET)
	public String update(Model model, ProductDTO productDTO) {
		model.addAttribute("productselect", productService.detail(productDTO.getProductnumber()));
		return "./product/product_update";
	}

	@RequestMapping(value = "/product_update", method = RequestMethod.POST)
	public String updateview(Model model, ProductDTO productDTO, MultipartFile file) {
		model.addAttribute("productupdate", productService.productSelectAll());
		productService.productUpdate(productDTO);
		String uploadFolder = "C:\\spring_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\interpark_ver_0.4\\resources\\imgUpload";
		String uploadFolder1 = "C:\\spring_workspace\\interpark_ver_0.4\\src\\main\\webapp\\resources\\imgUpload";
		String fileExtension = "jpg";
		int uniqueName = productDTO.getProductnumber();
		File saveFile = new File(uploadFolder + "\\" + uniqueName + "." + fileExtension);
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		File saveFile1 = new File(uploadFolder1 + "\\" + uniqueName + "." + fileExtension);
		try {
			file.transferTo(saveFile1);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "./product/product_update_view";
	}

	@RequestMapping(value = "/product_delete", method = RequestMethod.GET)
	public String delete(Model model, ProductDTO productDTO) {
		model.addAttribute("productselect", productService.detail(productDTO.getProductnumber()));
		return "./product/product_delete";
	}

	@RequestMapping(value = "/product_delete", method = RequestMethod.POST)
	public String deleteview(Model model, ProductDTO productDTO) {
		model.addAttribute("productdelete", productService.productSelectAll());
		productService.productDelete(productDTO.getProductnumber());
		int uniqueName = productDTO.getProductnumber();
		String path = "C:\\spring_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\interpark_ver_0.4\\resources\\imgUpload";
		String path1 = "C:\\spring_workspace\\interpark_ver_0.4\\src\\main\\webapp\\resources\\imgUpload";
		String fileExtension = "jpg";
		new File(path + "\\" + uniqueName + "." + fileExtension).delete();
		new File(path1 + "\\" + uniqueName + "." + fileExtension).delete();
		return "./product/product_delete_view";

	}
}
