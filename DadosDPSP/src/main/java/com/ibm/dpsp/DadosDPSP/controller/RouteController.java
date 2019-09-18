package com.ibm.dpsp.DadosDPSP.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Alinhamento;
import com.ibm.dpsp.DadosDPSP.model.entity.Data;
import com.ibm.dpsp.DadosDPSP.model.entity.Desvio;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;


@Controller
public class RouteController {
	
	@Autowired
	 private Database db;
	
	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public String login() {
		return "Login";
	}
	
	@RequestMapping(value="/Logout", method = RequestMethod.GET)
	public String logout() {
		return "/logout";
	}
	
	@RequestMapping(value="/testePopular", method = RequestMethod.GET)
	public String testePopular() {
		return "/testePopular";
	}
	
	@RequestMapping(value="/LoginW3", method = RequestMethod.GET)
	public String loginW3() {
		return "LoginW3";
	}
		
	@RequestMapping(value="/EncaminharEmail")
	public String encaminharEmail() {
		return "EncaminharEmail";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/LiberacaoDeDesvio")
	public String LiberacaoDeDesvio() {
		return "LiberacaoDeDesvio";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/Produtividade")
	public String produtividade() {
		return "Produtividade";
	}
	
	@RequestMapping(value="/CadastroDesvio")
	public String cadastroDesvio(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			return "CadastroDesvio";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}else {
				return "Data";
			}
		}
	}
	
	@RequestMapping("/")
	public String index(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Data data = new Data();
		
		int contaDesvio = 0;
		Desvio d;
		List<Desvio> allDesvios = null;
		List<Desvio> listPendente = new ArrayList<Desvio>();
		List<Desvio> listCompleta = new ArrayList<Desvio>();
		allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
        .getDocsAs(Desvio.class);
		
		int contaLeitura = 0;
		Alinhamento a;
		List<Alinhamento> allAlinhamentos = null;
		List<Alinhamento> lista = new ArrayList<Alinhamento>();
		allAlinhamentos = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
        .getDocsAs(Alinhamento.class);
		
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getLogon() != null) {
				if(d.getLiberar() != null) {
					if(d.getLogon().equals(user.get_id())) {
						if(d.getDeAcordo() == null) {
							listPendente.add(d);
							contaDesvio ++;
						}else {
							listCompleta.add(d);
						}
					}
				}
			}
		}
		if(user.get_id().equals("andrespx")) {
			for(int i=0; i< allAlinhamentos.size(); i++) {
				a = allAlinhamentos.get(i);
				if(a.getDataAlinhamento() != null) {
					if(a.getAndrespx() == null) {
						lista.add(a);
						contaLeitura ++;
					}else {
						if(a.getAndrespx().equals("")) {
							lista.add(a);
							contaLeitura ++;
						}
					}
				}
			}
		}else {
			if(user.get_id().equals("buenoga")) {
				for(int i=0; i< allAlinhamentos.size(); i++) {
					a = allAlinhamentos.get(i);
					if(a.getDataAlinhamento() != null) {
						if(a.getBuenoga() == null) {
							lista.add(a);
							contaLeitura ++;
						}else {
							if(a.getBuenoga().equals("")) {
								lista.add(a);
								contaLeitura ++;
							}
						}
					}
				}
			}else {
				if(user.get_id().equals("eduaopa")) {
					for(int i=0; i< allAlinhamentos.size(); i++) {
						a = allAlinhamentos.get(i);
						if(a.getDataAlinhamento() != null) {
							if(a.getEduaopa() == null) {
								lista.add(a);
								contaLeitura ++;
							}else {
								if(a.getEduaopa().equals("")) {
									lista.add(a);
									contaLeitura ++;
								}
							}
						}
					}
				}else {
					if(user.get_id().equals("felneves")) {
						for(int i=0; i< allAlinhamentos.size(); i++) {
							a = allAlinhamentos.get(i);
							if(a.getDataAlinhamento() != null) {
								if(a.getFelneves() == null) {
									lista.add(a);
									contaLeitura ++;
								}else {
									if(a.getFelneves().equals("")) {
										lista.add(a);
										contaLeitura ++;
									}
								}
							}
						}
					}else {
						if(user.get_id().equals("felsan")) {
							for(int i=0; i< allAlinhamentos.size(); i++) {
								a = allAlinhamentos.get(i);
								if(a.getDataAlinhamento() != null) {
									if(a.getFelsan() == null) {
										lista.add(a);
										contaLeitura ++;
									}else {
										if(a.getFelsan().equals("")) {
											lista.add(a);
											contaLeitura ++;
										}
									}
								}
							}
						}else {
							if(user.get_id().equals("ferlapx")) {
								for(int i=0; i< allAlinhamentos.size(); i++) {
									a = allAlinhamentos.get(i);
									if(a.getDataAlinhamento() != null) {
										if(a.getFerlapx() == null) {
											lista.add(a);
											contaLeitura ++;
										}else {
											if(a.getFerlapx().equals("")) {
												lista.add(a);
												contaLeitura ++;
											}
										}
									}
								}
							}else {
								if(user.get_id().equals("gsoli")) {
									for(int i=0; i< allAlinhamentos.size(); i++) {
										a = allAlinhamentos.get(i);
										if(a.getDataAlinhamento() != null) {
											if(a.getGsoli() == null) {
												lista.add(a);
												contaLeitura ++;
											}else {
												if(a.getGsoli().equals("")) {
													lista.add(a);
													contaLeitura ++;
												}
											}
										}
									}
								}else {
									if(user.get_id().equals("jquei")) {
										for(int i=0; i< allAlinhamentos.size(); i++) {
											a = allAlinhamentos.get(i);
											if(a.getDataAlinhamento() != null) {
												if(a.getJquei() == null) {
													lista.add(a);
													contaLeitura ++;
												}else {
													if(a.getJquei().equals("")) {
														lista.add(a);
														contaLeitura ++;
													}
												}
											}
										}
									}else {
										if(user.get_id().equals("juancda")) {
											for(int i=0; i< allAlinhamentos.size(); i++) {
												a = allAlinhamentos.get(i);
												if(a.getDataAlinhamento() != null) {
													if(a.getJuancda() == null) {
														lista.add(a);
														contaLeitura ++;
													}else {
														if(a.getJuancda().equals("")) {
															lista.add(a);
															contaLeitura ++;
														}
													}
												}
											}
										}else {
											if(user.get_id().equals("leiper")) {
												for(int i=0; i< allAlinhamentos.size(); i++) {
													a = allAlinhamentos.get(i);
													if(a.getDataAlinhamento() != null) {
														if(a.getLeiper() == null) {
															lista.add(a);
															contaLeitura ++;
														}else {
															if(a.getLeiper().equals("")) {
																lista.add(a);
																contaLeitura ++;
															}
														}
													}
												}
											}else {
												if(user.get_id().equals("ligiar")) {
													for(int i=0; i< allAlinhamentos.size(); i++) {
														a = allAlinhamentos.get(i);
														if(a.getDataAlinhamento() != null) {
															if(a.getLigiar() == null) {
																lista.add(a);
																contaLeitura ++;
															}else {
																if(a.getLigiar().equals("")) {
																	lista.add(a);
																	contaLeitura ++;
																}
															}
														}
													}
												}else {
													if(user.get_id().equals("lilianfp")) {
														for(int i=0; i< allAlinhamentos.size(); i++) {
															a = allAlinhamentos.get(i);
															if(a.getDataAlinhamento() != null) {
																if(a.getLilianfp() == null) {
																	lista.add(a);
																	contaLeitura ++;
																}else {
																	if(a.getLilianfp().equals("")) {
																		lista.add(a);
																		contaLeitura ++;
																	}
																}
															}
														}
													}else {
														if(user.get_id().equals("malonenc")) {
															for(int i=0; i< allAlinhamentos.size(); i++) {
																a = allAlinhamentos.get(i);
																if(a.getDataAlinhamento() != null) {
																	if(a.getMalonenc() == null) {
																		lista.add(a);
																		contaLeitura ++;
																	}else {
																		if(a.getMalonenc().equals("")) {
																			lista.add(a);
																			contaLeitura ++;
																		}
																	}
																}
															}
														}else {
															if(user.get_id().equals("marcoabj")) {
																for(int i=0; i< allAlinhamentos.size(); i++) {
																	a = allAlinhamentos.get(i);
																	if(a.getDataAlinhamento() != null) {
																		if(a.getMarcoabj() == null) {
																			lista.add(a);
																			contaLeitura ++;
																		}else {
																			if(a.getMarcoabj().equals("")) {
																				lista.add(a);
																				contaLeitura ++;
																			}
																		}
																	}
																}
															}else {
																if(user.get_id().equals("mariaels")) {
																	for(int i=0; i< allAlinhamentos.size(); i++) {
																		a = allAlinhamentos.get(i);
																		if(a.getDataAlinhamento() != null) {
																			if(a.getMariaels() == null) {
																				lista.add(a);
																				contaLeitura ++;
																			}else {
																				if(a.getMariaels().equals("")) {
																					lista.add(a);
																					contaLeitura ++;
																				}
																			}
																		}
																	}
																}else {
																	if(user.get_id().equals("mayss")) {
																		for(int i=0; i< allAlinhamentos.size(); i++) {
																			a = allAlinhamentos.get(i);
																			if(a.getDataAlinhamento() != null) {
																				if(a.getMayss() == null) {
																					lista.add(a);	
																					contaLeitura ++;
																				}else {
																					if(a.getMayss().equals("")) {
																						lista.add(a);
																						contaLeitura ++;
																					}
																				}
																			}
																		}
																	}else {
																		if(user.get_id().equals("mfdiaspx")) {
																			for(int i=0; i< allAlinhamentos.size(); i++) {
																				a = allAlinhamentos.get(i);
																				if(a.getDataAlinhamento() != null) {
																					if(a.getMfdiaspx() == null) {
																						lista.add(a);	
																						contaLeitura ++;
																					}else {
																						if(a.getMfdiaspx().equals("")) {
																							lista.add(a);
																							contaLeitura ++;																					}
																					}
																				}
																			}
																		}else {
																			if(user.get_id().equals("munizn")) {
																				for(int i=0; i< allAlinhamentos.size(); i++) {
																					a = allAlinhamentos.get(i);
																					if(a.getDataAlinhamento() != null) {
																						if(a.getMunizn() == null) {
																							lista.add(a);
																							contaLeitura ++;
																						}else {
																							if(a.getMunizn().equals("")) {
																								lista.add(a);
																								contaLeitura ++;
																							}
																						}
																					}
																				}
																			}else {
																				if(user.get_id().equals("murisil")) {
																					for(int i=0; i< allAlinhamentos.size(); i++) {
																						a = allAlinhamentos.get(i);
																						if(a.getDataAlinhamento() != null) {
																							if(a.getMurisil() == null) {
																								lista.add(a);	
																								contaLeitura ++;
																							}else {
																								if(a.getMurisil().equals("")) {
																									lista.add(a);
																									contaLeitura ++;
																								}
																							}
																						}
																					}
																				}else {
																					if(user.get_id().equals("ofaria")) {
																						for(int i=0; i< allAlinhamentos.size(); i++) {
																							a = allAlinhamentos.get(i);
																							if(a.getDataAlinhamento() != null) {
																								if(a.getOfaria() == null) {
																									lista.add(a);	
																									contaLeitura ++;
																								}else {
																									if(a.getOfaria().equals("")) {
																										lista.add(a);
																										contaLeitura ++;
																									}
																								}
																							}
																						}
																					}else {
																						if(user.get_id().equals("oliversi")) {
																							for(int i=0; i< allAlinhamentos.size(); i++) {
																								a = allAlinhamentos.get(i);
																								if(a.getDataAlinhamento() != null) {
																									if(a.getOliversi() == null) {
																										lista.add(a);	
																										contaLeitura ++;
																									}else {
																										if(a.getOliversi().equals("")) {
																											lista.add(a);
																											contaLeitura ++;
																										}
																									}
																								}
																							}
																						}else {
																							if(user.get_id().equals("petma")) {
																								for(int i=0; i< allAlinhamentos.size(); i++) {
																									a = allAlinhamentos.get(i);
																									if(a.getDataAlinhamento() != null) {
																										if(a.getPetma() == null) {
																											lista.add(a);	
																											contaLeitura ++;
																										}else {
																											if(a.getPetma().equals("")) {
																												lista.add(a);
																												contaLeitura ++;
																											}
																										}
																									}
																								}
																							}else {
																								if(user.get_id().equals("phperepx")) {
																									for(int i=0; i< allAlinhamentos.size(); i++) {
																										a = allAlinhamentos.get(i);
																										if(a.getDataAlinhamento() != null) {
																											if(a.getPhperepx() == null) {
																												lista.add(a);	
																												contaLeitura ++;
																											}else {
																												if(a.getPhperepx().equals("")) {
																													lista.add(a);
																													contaLeitura ++;
																												}
																											}
																										}
																									}
																								}else {
																									if(user.get_id().equals("pjordaot")) {
																										for(int i=0; i< allAlinhamentos.size(); i++) {
																											a = allAlinhamentos.get(i);
																											if(a.getDataAlinhamento() != null) {
																												if(a.getPjordaot() == null) {
																													lista.add(a);	
																													contaLeitura ++;
																												}else {
																													if(a.getPjordaot().equals("")) {
																														lista.add(a);
																														contaLeitura ++;
																													}
																												}
																											}
																										}
																									}else {
																										if(user.get_id().equals("rafaelos")) {
																											for(int i=0; i< allAlinhamentos.size(); i++) {
																												a = allAlinhamentos.get(i);
																												if(a.getDataAlinhamento() != null) {
																													if(a.getRafaelos() == null) {
																														lista.add(a);	
																														contaLeitura ++;
																													}else {
																														if(a.getRafaelos().equals("")) {
																															lista.add(a);
																															contaLeitura ++;
																														}
																													}
																												}
																											}
																										}else {
																											if(user.get_id().equals("rafsanco")) {
																												for(int i=0; i< allAlinhamentos.size(); i++) {
																													a = allAlinhamentos.get(i);
																													if(a.getDataAlinhamento() != null) {
																														if(a.getRafsanco() == null) {
																															lista.add(a);	
																															contaLeitura ++;
																														}else {
																															if(a.getRafsanco().equals("")) {
																																lista.add(a);
																																contaLeitura ++;
																															}
																														}
																													}
																												}
																											}else {
																												if(user.get_id().equals("rodolfob")) {
																													for(int i=0; i< allAlinhamentos.size(); i++) {
																														a = allAlinhamentos.get(i);
																														if(a.getDataAlinhamento() != null) {
																															if(a.getRodolfob() == null) {
																																lista.add(a);	
																																contaLeitura ++;
																															}else {
																																if(a.getRodolfob().equals("")) {
																																	lista.add(a);
																																	contaLeitura ++;
																																}
																															}
																														}
																													}
																												}else {
																													if(user.get_id().equals("rrslima")) {
																														for(int i=0; i< allAlinhamentos.size(); i++) {
																															a = allAlinhamentos.get(i);
																															if(a.getDataAlinhamento() != null) {
																																if(a.getRrslima() == null) {
																																	lista.add(a);	
																																	contaLeitura ++;
																																}else {
																																	if(a.getRrslima().equals("")) {
																																		lista.add(a);
																																		contaLeitura ++;
																																	}
																																}
																															}
																														}
																													}else {
																														if(user.get_id().equals("ssabrina")) {
																															for(int i=0; i< allAlinhamentos.size(); i++) {
																																a = allAlinhamentos.get(i);
																																if(a.getDataAlinhamento() != null) {
																																	if(a.getSsabrina() == null) {
																																		lista.add(a);	
																																		contaLeitura ++;
																																	}else {
																																		if(a.getSsabrina().equals("")) {
																																			lista.add(a);
																																			contaLeitura ++;
																																		}
																																	}
																																}
																															}
																														}else {
																															if(user.get_id().equals("tdom")) {
																																for(int i=0; i< allAlinhamentos.size(); i++) {
																																	a = allAlinhamentos.get(i);
																																	if(a.getDataAlinhamento() != null) {
																																		if(a.getTdom() == null) {
																																			lista.add(a);	
																																			contaLeitura ++;
																																		}else {
																																			if(a.getTdom().equals("")) {
																																				lista.add(a);
																																				contaLeitura ++;
																																			}
																																		}
																																	}
																																}
																															}else {
																																if(user.get_id().equals("vilanopx")) {
																																	for(int i=0; i< allAlinhamentos.size(); i++) {
																																		a = allAlinhamentos.get(i);
																																		if(a.getDataAlinhamento() != null) {
																																			if(a.getVilanopx() == null) {
																																				lista.add(a);	
																																				contaLeitura ++;
																																			}else {
																																				if(a.getVilanopx().equals("")) {
																																					lista.add(a);
																																					contaLeitura ++;
																																				}
																																			}
																																		}
																																	}
																																}else {
																																	if(user.get_id().equals("wellinlo")) {
																																		for(int i=0; i< allAlinhamentos.size(); i++) {
																																			a = allAlinhamentos.get(i);
																																			if(a.getDataAlinhamento() != null) {
																																				if(a.getWellinlo() == null) {
																																					lista.add(a);	
																																					contaLeitura ++;
																																				}else {
																																					if(a.getWellinlo().equals("")) {
																																						lista.add(a);
																																						contaLeitura ++;
																																					}
																																				}
																																			}
																																		}
																																	}else {
																																		if(user.get_id().equals("enasilva")) {
																																			for(int i=0; i< allAlinhamentos.size(); i++) {
																																				a = allAlinhamentos.get(i);
																																				if(a.getDataAlinhamento() != null) {
																																					if(a.getEnasilva() == null) {
																																						lista.add(a);	
																																						contaLeitura ++;
																																					}else {
																																						if(a.getEnasilva().equals("")) {
																																							lista.add(a);
																																							contaLeitura ++;
																																						}
																																					}
																																				}
																																			}
																																		}else {
																																			if(user.get_id().equals("gabaf")) {
																																				for(int i=0; i< allAlinhamentos.size(); i++) {
																																					a = allAlinhamentos.get(i);
																																					if(a.getDataAlinhamento() != null) {
																																						if(a.getGabaf() == null) {
																																							lista.add(a);	
																																							contaLeitura ++;
																																						}else {
																																							if(a.getGabaf().equals("")) {
																																								lista.add(a);
																																								contaLeitura ++;
																																							}
																																						}
																																					}
																																				}
																																			}else {
																																				if(user.get_id().equals("guhfs")) {
																																					for(int i=0; i< allAlinhamentos.size(); i++) {
																																						a = allAlinhamentos.get(i);
																																						if(a.getDataAlinhamento() != null) {
																																							if(a.getGuhfs() == null) {
																																								lista.add(a);	
																																								contaLeitura ++;
																																							}else {
																																								if(a.getGuhfs().equals("")) {
																																									lista.add(a);
																																									contaLeitura ++;
																																								}
																																							}
																																						}
																																					}
																																				}
																																			}
																																		}
																																	}
																																}
																															}
																														}
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		
		model.addAttribute("listPendente", listPendente);
		model.addAttribute("listCompleta", listCompleta);
		session.setAttribute("contaLeitura", contaLeitura);
		session.setAttribute("contaDesvio", contaDesvio);
		
		if(user.getAccess().equals("ADM")) {
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "DataADM";
		}else {
			if(user.getAccess().equals("Lider")) {
				data.setImg("/img/dpsp.jpg");
				model.addAttribute("data", data);
				return "DataLideranca";
			}else {
				
			}
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "Data";
		}
	}
	
	@RequestMapping("/VoltarEmail")
	public String voltarEmail(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			return data(model, session, response, request);
		}else {
			if(user.getAccess().equals("ADM")) {
				return data(model, session, response, request);
			}else {
				return data(model, session, response, request);
			}
		}
	}
	
	@RequestMapping("/Data")
	public String data(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Data data = new Data();
		if(user.getAccess().equals("ADM")) {
			String erro = null;
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			model.addAttribute("erro", erro);
			return "DataADM";
		}else {
			if(user.getAccess().equals("Lider")) {
				String erro = null;
				data.setImg("/img/dpsp.jpg");
				model.addAttribute("data", data);
				model.addAttribute("erro", erro);
				return "DataLideranca";
			}else {
				String erro = null;
				data.setImg("/img/dpsp.jpg");
				model.addAttribute("data", data);
				model.addAttribute("erro", erro);
				return "Data";
			}
		}
	}
	
	@RequestMapping("/DataADM")
	public String dataADM(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Data data = new Data();
		if(user.getAccess().equals("ADM")) {
			String erro = null;
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			model.addAttribute("erro", erro);
			return "DataADM";
		}else {
			if(user.getAccess().equals("Lider")) {
				String erro = null;
				data.setImg("/img/dpsp.jpg");
				model.addAttribute("data", data);
				model.addAttribute("erro", erro);
				return "DataLideranca";
			}else {
				String erro = null;
				data.setImg("/img/dpsp.jpg");
				model.addAttribute("data", data);
				model.addAttribute("erro", erro);
				return "Data";
			}
		}
	}
	
	@RequestMapping("/Email")
	public String email() {
		return "EncaminharEmail";
	}
	
	@RequestMapping("/Dashboard")
	public String adm(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException{
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			List<Data> allLojas = null;
			
			int DSP = 0;
			int AL = 0;
			int BA = 0;
			int DF = 0;
			int GO = 0;
			int MGSP = 0;
			int PE = 0;
			int RJSP = 0;
			int SP = 0;
			int DP = 0;
			int ES = 0;
			int PR = 0;
			int RJ = 0;
			int MGRJ = 0;
			int analista = 0;
			Data as;

	        allLojas = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Data.class);
	        
	        
	        for(int i=0; i< allLojas.size(); i++) {
	        	as = allLojas.get(i);
	        	if(as.getBandeira() != null) {
	            	if(as.getBandeira().equals("DSP")) {
	            		DSP ++;
	            		if(as.getUf().equals("SP")) {
	            			SP ++;
	            		}else {
	            			if(as.getUf().equals("AL")) {
	            				AL ++;
	            			}else if(as.getUf().equals("BA")) {
	            				BA ++;
	            			}else if(as.getUf().equals("DF")) {
	            				DF ++;
	            			}else if(as.getUf().equals("GO")) {
	            				GO ++;
	            			}else if(as.getUf().equals("MG")) {
	            				MGSP ++;
	            			}else if(as.getUf().equals("PE")) {
	            				PE ++;
	            			}else if(as.getUf().equals("RJ")) {
	            				RJSP ++;
	            			}
	            		}
	            	}else {
	            		if(as.getBandeira().equals("DP")) {
	                		DP ++;
	                		if(as.getUf().equals("RJ")) {
	                			RJ ++;
	                		}else {
	                			if(as.getUf().equals("ES")) {
	                				ES ++;
	                			}else if(as.getUf().equals("MG")) {
	                				MGRJ ++;
	                			}else if(as.getUf().equals("PR")) {
	                				PR ++ ;
	                			}
	                		}
	            		}
	            	}
	        	}else {
	        		analista ++;
	        	}
	        }
	       
	        model.addAttribute("lojasDSP", DSP);
	        model.addAttribute("lojasDP", DP);
	        model.addAttribute("sp", SP);
	        model.addAttribute("al", AL);
	        model.addAttribute("ba", BA);
	        model.addAttribute("df", DF);
	        model.addAttribute("df", DF);
	        model.addAttribute("go", GO);
	        model.addAttribute("mgsp", MGSP);
	        model.addAttribute("pe", PE);
	        model.addAttribute("rjsp", RJSP);
	        model.addAttribute("rj", RJ);
	        model.addAttribute("es", ES);
	        model.addAttribute("mgrj", MGRJ);
	        model.addAttribute("pr", PR);
			return "Dashboard";
		}else {
			if(user.getAccess().equals("Lider")) {
				List<Data> allLojas = null;
				
				int DSP = 0;
				int AL = 0;
				int BA = 0;
				int DF = 0;
				int GO = 0;
				int MGSP = 0;
				int PE = 0;
				int RJSP = 0;
				int SP = 0;
				int DP = 0;
				int ES = 0;
				int PR = 0;
				int RJ = 0;
				int MGRJ = 0;
				int analista = 0;
				Data as;

		        allLojas = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
		        .getDocsAs(Data.class);
		        
		        
		        for(int i=0; i< allLojas.size(); i++) {
		        	as = allLojas.get(i);
		        	if(as.getBandeira() != null) {
		            	if(as.getBandeira().equals("DSP")) {
		            		DSP ++;
		            		if(as.getUf().equals("SP")) {
		            			SP ++;
		            		}else {
		            			if(as.getUf().equals("AL")) {
		            				AL ++;
		            			}else if(as.getUf().equals("BA")) {
		            				BA ++;
		            			}else if(as.getUf().equals("DF")) {
		            				DF ++;
		            			}else if(as.getUf().equals("GO")) {
		            				GO ++;
		            			}else if(as.getUf().equals("MG")) {
		            				MGSP ++;
		            			}else if(as.getUf().equals("PE")) {
		            				PE ++;
		            			}else if(as.getUf().equals("RJ")) {
		            				RJSP ++;
		            			}
		            		}
		            	}else {
		            		if(as.getBandeira().equals("DP")) {
		                		DP ++;
		                		if(as.getUf().equals("RJ")) {
		                			RJ ++;
		                		}else {
		                			if(as.getUf().equals("ES")) {
		                				ES ++;
		                			}else if(as.getUf().equals("MG")) {
		                				MGRJ ++;
		                			}else if(as.getUf().equals("PR")) {
		                				PR ++ ;
		                			}
		                		}
		            		}
		            	}
		        	}else {
		        		analista ++;
		        	}
		        }
		       
		        model.addAttribute("lojasDSP", DSP);
		        model.addAttribute("lojasDP", DP);
		        model.addAttribute("sp", SP);
		        model.addAttribute("al", AL);
		        model.addAttribute("ba", BA);
		        model.addAttribute("df", DF);
		        model.addAttribute("df", DF);
		        model.addAttribute("go", GO);
		        model.addAttribute("mgsp", MGSP);
		        model.addAttribute("pe", PE);
		        model.addAttribute("rjsp", RJSP);
		        model.addAttribute("rj", RJ);
		        model.addAttribute("es", ES);
		        model.addAttribute("mgrj", MGRJ);
		        model.addAttribute("pr", PR);
				return "DashboardLideranca";
			}else {
				return "Data";				
			}
		}
	}	
	
	@RequestMapping("/ListarAnalista")
	public String listarAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			
			Usuario u;
			List<Usuario> allAnalistas = null;
			List<Usuario> list = new ArrayList<Usuario>();
			allAnalistas = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Usuario.class);
			
			for(int i=0; i< allAnalistas.size(); i++) {
				u = allAnalistas.get(i);
				if(u.getFullName() != null) {
					list.add(u);
				}
			}
			model.addAttribute("list", list);
			return "ListarAnalista";
		}else {
			if(user.getAccess().equals("Lider")) {
				
				Usuario u;
				List<Usuario> allAnalistas = null;
				List<Usuario> list = new ArrayList<Usuario>();
				allAnalistas = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
		        .getDocsAs(Usuario.class);
				
				for(int i=0; i< allAnalistas.size(); i++) {
					u = allAnalistas.get(i);
					if(u.getFullName() != null) {
						list.add(u);
					}
				}
				model.addAttribute("list", list);
				return "ListarAnalistaLideranca";
			}else {
				return "Data";
			}
		}
	}
	
	@RequestMapping("/AlteraAnalista")
	public String alteraAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, @RequestParam("id") String _id) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			Usuario usuario = db.find(Usuario.class, _id);
			model.addAttribute("user", usuario);
			return "AlterarAnalista";
		}else {
			if(user.getAccess().equals("Lider")) {
				Usuario usuario = db.find(Usuario.class, _id);
				model.addAttribute("user", usuario);
				return "AlterarAnalistaLideranca";
			}else {
				return "Data";
			}
		}
	}
	
	@RequestMapping("/AtualizaLoja")
	public String atualizaLoja(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "AtualizaLoja";
		}else {
			if(user.getAccess().equals("Lider")) {
				return "AtualizaLojaLideranca";
			}else {
				return "Data";			
			}

		}
	}
	
	@RequestMapping("/CadastroLoja")
	public String cadastroLoja(HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "CadastroLoja";
		}else {
			if(user.getAccess().equals("Lider")) {
				return "CadastroLojaLideranca";
			}else {
				return "Data";	
			}
		}
	}
	
	@RequestMapping("/CadastroAnalista")
	public String cadastroAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "CadastroAnalista";
		}else {
			if(user.getAccess().equals("Lider")) {
				return "CadastroAnalistaLideranca";
			}else {
				return "Data";
			}
		}
	}
}
