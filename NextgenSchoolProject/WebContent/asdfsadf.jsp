@Component
@Controller
public class PrincipalController {

	static final Logger LOGGER = Logger.getLogger(PrincipalController.class);

	@Autowired
	private PrincipalService principalService;

	@RequestMapping(value = { NextGenConstants.PRINCIPAL_REGISTER}, method = RequestMethod.GET)
	public ModelAndView showprincipalRegisterPage(@ModelAttribute("principalRegister") PrincipalRegister principalRegister) {
		return new ModelAndView("principalRegister", "command", new PrincipalRegister());

	}

	@RequestMapping(value = { NextGenConstants.PRINCIPAL_LOGIN_VIEW }, method = RequestMethod.GET)
	public ModelAndView showPrincipalLoginPage(@ModelAttribute("principalRegister") PrincipalRegister principalRegister) {
		return new ModelAndView("principalLogin", "command", new PrincipalRegister());

	}
	
	
	@RequestMapping(value = { NextGenConstants.PRINCIPAL_HOME_VIEW }, method = RequestMethod.GET)
	public ModelAndView showPrincipalHomePage(@ModelAttribute("principalRegister") PrincipalRegister principalRegister) {
		return new ModelAndView("principalHome", "command", new PrincipalRegister());

	}

	@RequestMapping(value = NextGenConstants.PRINCIPAL_REGISTER_VIEW, method = RequestMethod.POST)
	public ModelAndView submitprincipalLogin(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("principalRegister") PrincipalRegister principalRegister,Enquiry enquiry,BindingResult result)  {

		Cookie ck = new Cookie("principalLoginCookie", "principalLogged");
		ck.setMaxAge(2592000);
		/*ck.setDomain("localhost");
		ck.setHttpOnly(true); 
		ck.setSecure(true); 
		ck.setComment("principalLoggin");*/ 
		response.addCookie(ck);

		boolean principalExists = false;

		try {

			principalExists = principalService.validatePrincipalLogin(principalRegister);

		} catch (DataAccessException dataaccessexception) {
			dataaccessexception.printStackTrace();

			LOGGER.error(" principal login error failed due to incorrect login details"+dataaccessexception);
		}

		if (principalExists) { //Can be replaced with if(principalExists)

			String branchName = enquiry.getBranchName();
	        
			List<Enquiry> studentList = principalService.getEnquiries(branchName); // rename the method as getEnquiries()
			
			LOGGER.info("students list is " + studentList);
			HttpSession session = request.getSession();
			session.setAttribute("studentList", studentList);
			
			String principal= principalRegister.getEmail(); //Is it principal or principal's email?
			
			String principalName  = principal.substring(0, 9); //Get the principal details from db and display the First name.
			
			session.setAttribute("principal", principalName);
			
			return new ModelAndView("principalHome", "command", new  PrincipalRegister());
		}

		return new ModelAndView("principalLogin", "command", new  PrincipalRegister());

	}

	@RequestMapping(value = NextGenConstants.PRINCIPAL_SUBMIT, method = RequestMethod.POST)
	public String submitPrincipalRegister(@ModelAttribute("principalRegister") PrincipalRegister registerPrincipal, BindingResult result)
			throws DataAccessException {

		try {

			principalService.savePrincipal(registerPrincipal); //rename method as registerPrincipal
		} catch (DataAccessException dataAccessException) {
			dataAccessException.printStackTrace();

			LOGGER.error("principal register error: failed due to incorrect data" + dataAccessException);

		}

		//return "redirect:/principalLoginView.htm";
		return NextGenConstants.PRINCIPAL_LOGIN;

	}

	
	@RequestMapping(value = NextGenConstants.PRINCIPAL_LOGOUT, method = RequestMethod.GET)
	public String submitPrincipalLogout(HttpSession session,HttpServletRequest request,HttpServletResponse response,
			@ModelAttribute("principalLogout") PrincipalRegister principalRegister, BindingResult result) throws DataAccessException {
			
		Cookie ck = new Cookie("principalLoginCookie", "");
		ck.setMaxAge(0);
		
		response.addCookie(ck);
		
		session.getAttribute("principal");
		
		session.invalidate();
		
		return NextGenConstants.PRINCIPAL_LOGIN;


	
	}
	

}

