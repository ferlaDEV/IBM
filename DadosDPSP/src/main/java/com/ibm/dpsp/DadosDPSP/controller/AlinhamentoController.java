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
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Alinhamento;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;

@Controller
public class AlinhamentoController {
	
	@Autowired
	 private Database db;
	
	@RequestMapping("/AlteraAlinhamento")
	public String alteraAlinhamento(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request,
			@RequestParam("id") String id) {
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			
			Alinhamento alinhamento = db.find(Alinhamento.class, id);
			model.addAttribute("alinhamento", alinhamento);
			return	"AlterarAlinhamento";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}
			return "Data";
		}	
	}
	
	
	@RequestMapping("/AlterarAlinhamento")
	public String alterarAlinhamento(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request,
			@RequestParam("id") String id, @RequestParam("andrespx") String andrespx, @RequestParam("buenoga") String buenoga,
			@RequestParam("eduaopa") String eduaopa, @RequestParam("enasilva") String enasilva, @RequestParam("felneves") String felneves,
			@RequestParam("felsan") String felsan, @RequestParam("ferlapx") String ferlapx, @RequestParam("gabaf") String gabaf,
			@RequestParam("gsoli") String gsoli, @RequestParam("guhfs") String guhfs, @RequestParam("jquei") String jquei, 
			@RequestParam("juancda") String juancda, @RequestParam("leiper") String leiper, @RequestParam("ligiar") String ligiar,
			@RequestParam("lilianfp") String lilianfp, @RequestParam("malonenc") String malonenc, @RequestParam("marcoabj") String marcoabj,
			@RequestParam("mariaels") String mariaels, @RequestParam("mayss") String mayss, @RequestParam("mfdiaspx") String mfdiaspx,
			@RequestParam("munizn") String munizn, @RequestParam("murisil") String murisil, @RequestParam("ofaria") String ofaria,
			@RequestParam("oliversi") String oliversi, @RequestParam("petma") String petma, @RequestParam("phperepx") String phperepx,
			@RequestParam("pjordaot") String pjordaot, @RequestParam("rafaelos") String rafaelos, @RequestParam("rafsanco") String rafsanco,
			@RequestParam("rodolfob") String rodolfob, @RequestParam("rrslima") String rrslima, @RequestParam("ssabrina") String ssabrina,
			@RequestParam("tdom") String tdom, @RequestParam("vilanopx") String vilanopx, @RequestParam("wellinlo") String wellinlo) throws IOException {
		
		String mensagemSuccess = null;
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
		
			Alinhamento alinhamento = db.find(Alinhamento.class, id);
			
			alinhamento.set_id(alinhamento.get_id());
			alinhamento.set_rev(alinhamento.get_rev());
			alinhamento.setAndrespx(andrespx);
			alinhamento.setBuenoga(buenoga);
			alinhamento.setEduaopa(eduaopa);
			alinhamento.setEnasilva(enasilva);
			alinhamento.setFelneves(felneves);
			alinhamento.setFelsan(felsan);
			alinhamento.setFerlapx(ferlapx);
			alinhamento.setGabaf(gabaf);
			alinhamento.setGsoli(gsoli);
			alinhamento.setGuhfs(guhfs);
			alinhamento.setJquei(jquei);
			alinhamento.setJuancda(juancda);
			alinhamento.setLeiper(leiper);
			alinhamento.setLigiar(ligiar);
			alinhamento.setLilianfp(lilianfp);
			alinhamento.setMalonenc(malonenc);
			alinhamento.setMarcoabj(marcoabj);
			alinhamento.setMariaels(mariaels);
			alinhamento.setMayss(mayss);
			alinhamento.setMfdiaspx(mfdiaspx);
			alinhamento.setMunizn(munizn);
			alinhamento.setMurisil(murisil);
			alinhamento.setOfaria(ofaria);
			alinhamento.setOliversi(oliversi);
			alinhamento.setPetma(petma);
			alinhamento.setPhperepx(phperepx);
			alinhamento.setPjordaot(pjordaot);
			alinhamento.setRafaelos(rafaelos);
			alinhamento.setRafsanco(rafsanco);
			alinhamento.setRodolfob(rodolfob);
			alinhamento.setRrslima(rrslima);
			alinhamento.setSsabrina(ssabrina);
			alinhamento.setTdom(tdom);
			alinhamento.setVilanopx(vilanopx);
			alinhamento.setWellinlo(wellinlo);
			mensagemSuccess = "Alinhamento alterado com sucesso";
			
			model.addAttribute("mensagemSuccess", mensagemSuccess);
			db.update(alinhamento);
			
			Alinhamento a;
			List<Alinhamento> allAlinhamentos = null;
			List<Alinhamento> lista = new ArrayList<Alinhamento>();
			allAlinhamentos = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Alinhamento.class);
			
			for(int i=0; i< allAlinhamentos.size(); i++) {
				a = allAlinhamentos.get(i);
				if(a.getDataAlinhamento() != null) {
					lista.add(a);
				}
			}
			
			model.addAttribute("list", lista);
			
			return "ListarAlinhamento";
	}else {
		if(user.getAccess().equals("ADM")) {
			return "DataADM";
		}
			return "Data";
		}	
	}
	
	@RequestMapping("/CadastroDeAlinhamento")
	public String cadastroDeAlinhamento() {
		return	"CadastroDeAlinhamento";
	}
	
	@RequestMapping("/ListarAlinhamento")
	public String listarAlinhamento(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
		
			Alinhamento a;
			List<Alinhamento> allAlinhamentos = null;
			List<Alinhamento> lista = new ArrayList<Alinhamento>();
			allAlinhamentos = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Alinhamento.class);
			
			for(int i=0; i< allAlinhamentos.size(); i++) {
				a = allAlinhamentos.get(i);
				if(a.getDataAlinhamento() != null) {
					lista.add(a);
				}
			}
			
			model.addAttribute("list", lista);
			return "ListarAlinhamento";
	}else {
		if(user.getAccess().equals("ADM")) {
			return "DataADM";
		}
			return "Data";
		}	
	}
	
	@RequestMapping("/CadastrarAlinhamento")
	public String cadastrarAlinhamento(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("nomeAlinhamento") String nomeAlinhamento, @RequestParam("dataAlinhamento") String dataDocumento, 
			@RequestParam("linkBase") String linkBase) {
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			
				String mensagemSuccess = null;
			
				mensagemSuccess = "Alinhamento Cadastrado com sucesso";
				
				Alinhamento newAlinhamento = new Alinhamento();
				newAlinhamento.setNomeAlinhamento(nomeAlinhamento);
				newAlinhamento.setDataAlinhamento(dataDocumento);
				newAlinhamento.setLinkBase(linkBase);
				db.post(newAlinhamento);
			    model.addAttribute("mensagemSuccess", mensagemSuccess);	
				return "CadastroDeAlinhamento";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}
			return "Data";
		}	
	}
	
	@RequestMapping("/ConfirmarLeitura")
	public String confirmarLeirura(@RequestParam("id") String id,Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		
		String mensagemSuccess = null;
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		
		Alinhamento alinhamento = db.find(Alinhamento.class, id);

		if(user.get_id().equals("andrespx")) {
			alinhamento.set_id(alinhamento.get_id());
			alinhamento.set_rev(alinhamento.get_rev());
			alinhamento.setAndrespx("Sim");
			db.update(alinhamento);
		}else {
			if(user.get_id().equals("buenoga")) {
				alinhamento.set_id(alinhamento.get_id());
				alinhamento.set_rev(alinhamento.get_rev());
				alinhamento.setBuenoga("Sim");
				db.update(alinhamento);
			}else {
				if(user.get_id().equals("eduaopa")) {
					alinhamento.set_id(alinhamento.get_id());
					alinhamento.set_rev(alinhamento.get_rev());
					alinhamento.setEduaopa("Sim");
					db.update(alinhamento);
				}else {
					if(user.get_id().equals("felneves")) {
						alinhamento.set_id(alinhamento.get_id());
						alinhamento.set_rev(alinhamento.get_rev());
						alinhamento.setFelneves("Sim");
						db.update(alinhamento);
					}else {
						if(user.get_id().equals("felsan")) {
							alinhamento.set_id(alinhamento.get_id());
							alinhamento.set_rev(alinhamento.get_rev());
							alinhamento.setFelsan("Sim");
							db.update(alinhamento);
						}else {
							if(user.get_id().equals("ferlapx")) {
								alinhamento.set_id(alinhamento.get_id());
								alinhamento.set_rev(alinhamento.get_rev());
								alinhamento.setFerlapx("Sim");
								db.update(alinhamento);
							}else {
								if(user.get_id().equals("gsoli")) {
									alinhamento.set_id(alinhamento.get_id());
									alinhamento.set_rev(alinhamento.get_rev());
									alinhamento.setGsoli("Sim");
									db.update(alinhamento);
								}else {
									if(user.get_id().equals("jquei")) {
										alinhamento.set_id(alinhamento.get_id());
										alinhamento.set_rev(alinhamento.get_rev());
										alinhamento.setJquei("Sim");
										db.update(alinhamento);
									}else {
										if(user.get_id().equals("juancda")) {
											alinhamento.set_id(alinhamento.get_id());
											alinhamento.set_rev(alinhamento.get_rev());
											alinhamento.setJuancda("Sim");
											db.update(alinhamento);
										}else {
											if(user.get_id().equals("leiper")) {
												alinhamento.set_id(alinhamento.get_id());
												alinhamento.set_rev(alinhamento.get_rev());
												alinhamento.setLeiper("Sim");
												db.update(alinhamento);
											}else {
												if(user.get_id().equals("ligiar")) {
													alinhamento.set_id(alinhamento.get_id());
													alinhamento.set_rev(alinhamento.get_rev());
													alinhamento.setLigiar("Sim");
													db.update(alinhamento);
												}else {
													if(user.get_id().equals("lilianfp")) {
														alinhamento.set_id(alinhamento.get_id());
														alinhamento.set_rev(alinhamento.get_rev());
														alinhamento.setLilianfp("Sim");
														db.update(alinhamento);
													}else {
														if(user.get_id().equals("malonenc")) {
															alinhamento.set_id(alinhamento.get_id());
															alinhamento.set_rev(alinhamento.get_rev());
															alinhamento.setMalonenc("Sim");
															db.update(alinhamento);
														}else {
															if(user.get_id().equals("marcoabj")) {
																alinhamento.set_id(alinhamento.get_id());
																alinhamento.set_rev(alinhamento.get_rev());
																alinhamento.setMarcoabj("Sim");
																db.update(alinhamento);
															}else {
																if(user.get_id().equals("mariaels")) {
																	alinhamento.set_id(alinhamento.get_id());
																	alinhamento.set_rev(alinhamento.get_rev());
																	alinhamento.setMariaels("Sim");
																	db.update(alinhamento);
																}else {
																	if(user.get_id().equals("mayss")) {
																		alinhamento.set_id(alinhamento.get_id());
																		alinhamento.set_rev(alinhamento.get_rev());
																		alinhamento.setMayss("Sim");
																		db.update(alinhamento);
																	}else {
																		if(user.get_id().equals("mfdiaspx")) {
																			alinhamento.set_id(alinhamento.get_id());
																			alinhamento.set_rev(alinhamento.get_rev());
																			alinhamento.setMfdiaspx("Sim");
																			db.update(alinhamento);
																		}else {
																			if(user.get_id().equals("munizn")) {
																				alinhamento.set_id(alinhamento.get_id());
																				alinhamento.set_rev(alinhamento.get_rev());
																				alinhamento.setMunizn("Sim");
																				db.update(alinhamento);
																			}else {
																				if(user.get_id().equals("murisil")) {
																					alinhamento.set_id(alinhamento.get_id());
																					alinhamento.set_rev(alinhamento.get_rev());
																					alinhamento.setMurisil("Sim");
																					db.update(alinhamento);
																				}else {
																					if(user.get_id().equals("ofaria")) {
																						alinhamento.set_id(alinhamento.get_id());
																						alinhamento.set_rev(alinhamento.get_rev());
																						alinhamento.setOfaria("Sim");
																						db.update(alinhamento);
																					}else {
																						if(user.get_id().equals("oliversi")) {
																							alinhamento.set_id(alinhamento.get_id());
																							alinhamento.set_rev(alinhamento.get_rev());
																							alinhamento.setOliversi("Sim");
																							db.update(alinhamento);
																						}else {
																							if(user.get_id().equals("petma")) {
																								alinhamento.set_id(alinhamento.get_id());
																								alinhamento.set_rev(alinhamento.get_rev());
																								alinhamento.setPetma("Sim");
																								db.update(alinhamento);
																							}else {
																								if(user.get_id().equals("phperepx")) {
																									alinhamento.set_id(alinhamento.get_id());
																									alinhamento.set_rev(alinhamento.get_rev());
																									alinhamento.setPhperepx("Sim");
																									db.update(alinhamento);
																								}else {
																									if(user.get_id().equals("pjordaot")) {
																										alinhamento.set_id(alinhamento.get_id());
																										alinhamento.set_rev(alinhamento.get_rev());
																										alinhamento.setPjordaot("Sim");
																										db.update(alinhamento);
																									}else {
																										if(user.get_id().equals("rafaelos")) {
																											alinhamento.set_id(alinhamento.get_id());
																											alinhamento.set_rev(alinhamento.get_rev());
																											alinhamento.setRafaelos("Sim");
																											db.update(alinhamento);
																										}else {
																											if(user.get_id().equals("rafsanco")) {
																												alinhamento.set_id(alinhamento.get_id());
																												alinhamento.set_rev(alinhamento.get_rev());
																												alinhamento.setRafsanco("Sim");
																												db.update(alinhamento);
																											}else {
																												if(user.get_id().equals("rodolfob")) {
																													alinhamento.set_id(alinhamento.get_id());
																													alinhamento.set_rev(alinhamento.get_rev());
																													alinhamento.setRodolfob("Sim");
																													db.update(alinhamento);
																												}else {
																													if(user.get_id().equals("rrslima")) {
																														alinhamento.set_id(alinhamento.get_id());
																														alinhamento.set_rev(alinhamento.get_rev());
																														alinhamento.setRrslima("Sim");
																														db.update(alinhamento);
																													}else {
																														if(user.get_id().equals("ssabrina")) {
																															alinhamento.set_id(alinhamento.get_id());
																															alinhamento.set_rev(alinhamento.get_rev());
																															alinhamento.setSsabrina("Sim");
																															db.update(alinhamento);
																														}else {
																															if(user.get_id().equals("tdom")) {
																																alinhamento.set_id(alinhamento.get_id());
																																alinhamento.set_rev(alinhamento.get_rev());
																																alinhamento.setTdom("Sim");
																																db.update(alinhamento);
																															}else {
																																if(user.get_id().equals("vilanopx")) {
																																	alinhamento.set_id(alinhamento.get_id());
																																	alinhamento.set_rev(alinhamento.get_rev());
																																	alinhamento.setVilanopx("Sim");
																																	db.update(alinhamento);
																																}else {
																																	if(user.get_id().equals("wellinlo")) {
																																		alinhamento.set_id(alinhamento.get_id());
																																		alinhamento.set_rev(alinhamento.get_rev());
																																		alinhamento.setWellinlo("Sim");
																																		db.update(alinhamento);
																																	}else {
																																		if(user.get_id().equals("enasilva")) {
																																			alinhamento.set_id(alinhamento.get_id());
																																			alinhamento.set_rev(alinhamento.get_rev());
																																			alinhamento.setEnasilva("Sim");
																																			db.update(alinhamento);
																																		}else {
																																			if(user.get_id().equals("gabaf")) {
																																				alinhamento.set_id(alinhamento.get_id());
																																				alinhamento.set_rev(alinhamento.get_rev());
																																				alinhamento.setGabaf("Sim");
																																				db.update(alinhamento);
																																			}else {
																																				if(user.get_id().equals("guhfs")) {
																																					alinhamento.set_id(alinhamento.get_id());
																																					alinhamento.set_rev(alinhamento.get_rev());
																																					alinhamento.setGuhfs("Sim");
																																					db.update(alinhamento);
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
		mensagemSuccess = "Confirmação de leitura de Alinhamento efetuada com sucesso!!";
		model.addAttribute("mensagemSuccess", mensagemSuccess);
		return listarAlinhamentoPendenteLeitura(model, session, request, request);
	}
	
	@RequestMapping("/ListarAlinhamentoPendenteLeitura")
	public String listarAlinhamentoPendenteLeitura(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		
		Alinhamento a;
		List<Alinhamento> allAlinhamentos = null;
		List<Alinhamento> lista = new ArrayList<Alinhamento>();
		allAlinhamentos = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
        .getDocsAs(Alinhamento.class);
		
		if(user.get_id().equals("andrespx")) {
			for(int i=0; i< allAlinhamentos.size(); i++) {
				a = allAlinhamentos.get(i);
				if(a.getDataAlinhamento() != null) {
					if(a.getAndrespx() == null) {
						lista.add(a);	
					}else {
						if(a.getAndrespx().equals("")) {
							lista.add(a);
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
						}else {
							if(a.getBuenoga().equals("")) {
								lista.add(a);
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
							}else {
								if(a.getEduaopa().equals("")) {
									lista.add(a);
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
								}else {
									if(a.getFelneves().equals("")) {
										lista.add(a);
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
									}else {
										if(a.getFelsan().equals("")) {
											lista.add(a);	
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
										}else {
											if(a.getFerlapx().equals("")) {
												lista.add(a);
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
											}else {
												if(a.getGsoli().equals("")) {
													lista.add(a);	
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
												}else {
													if(a.getJquei().equals("")) {
														lista.add(a);
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
													}else {
														if(a.getJuancda().equals("")) {
															lista.add(a);
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
														}else {
															if(a.getLeiper().equals("")) {
																lista.add(a);
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
															}else {
																if(a.getLigiar().equals("")) {
																	lista.add(a);
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
																}else {
																	if(a.getLilianfp().equals("")) {
																		lista.add(a);
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
																	}else {
																		if(a.getMalonenc().equals("")) {
																			lista.add(a);
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
																		}else {
																			if(a.getMarcoabj().equals("")) {
																				lista.add(a);
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
																			}else {
																				if(a.getMariaels().equals("")) {
																					lista.add(a);
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
																				}else {
																					if(a.getMayss().equals("")) {
																						lista.add(a);
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
																					}else {
																						if(a.getMfdiaspx().equals("")) {
																							lista.add(a);
																						}
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
																						}else {
																							if(a.getMunizn().equals("")) {
																								lista.add(a);
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
																							}else {
																								if(a.getMurisil().equals("")) {
																									lista.add(a);
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
																								}else {
																									if(a.getOfaria().equals("")) {
																										lista.add(a);
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
																									}else {
																										if(a.getOliversi().equals("")) {
																											lista.add(a);
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
																										}else {
																											if(a.getPetma().equals("")) {
																												lista.add(a);
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
																											}else {
																												if(a.getPhperepx().equals("")) {
																													lista.add(a);
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
																												}else {
																													if(a.getPjordaot().equals("")) {
																														lista.add(a);
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
																													}else {
																														if(a.getRafaelos().equals("")) {
																															lista.add(a);
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
																														}else {
																															if(a.getRafsanco().equals("")) {
																																lista.add(a);
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
																															}else {
																																if(a.getRodolfob().equals("")) {
																																	lista.add(a);
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
																																}
																															}else {
																																if(a.getRrslima().equals("")) {
																																	lista.add(a);
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
																																	}else {
																																		if(a.getSsabrina().equals("")) {
																																			lista.add(a);
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
																																		}else {
																																			if(a.getTdom().equals("")) {
																																				lista.add(a);
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
																																			}else {
																																				if(a.getVilanopx().equals("")) {
																																					lista.add(a);
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
																																				}else {
																																					if(a.getWellinlo().equals("")) {
																																						lista.add(a);
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
																																					}else {
																																						if(a.getEnasilva().equals("")) {
																																							lista.add(a);
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
																																						}else {
																																							if(a.getGabaf().equals("")) {
																																								lista.add(a);
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
																																							}else {
																																								if(a.getGuhfs().equals("")) {
																																									lista.add(a);
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
		model.addAttribute("list", lista);
		
		if(user.getAccess().equals("Lider")) {
			return "ListarAlinhamentoPendenteLeituraLideranca";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "ListarAlinhamentoPendenteLeituraADM";
			}else {
				return "ListarAlinhamentoPendenteLeitura";
			}
		}
		
	}
	
	@RequestMapping("/DeletarDocumento")
	public String deletarDocumento(@RequestParam("id") String id, Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		String mensagemSuccess = null;
		if(user.getAccess().equals("Lider")) {
			
			Alinhamento alinhamento = db.find(Alinhamento.class, id);
			db.remove(id, alinhamento.get_rev());
			Alinhamento a;
			List<Alinhamento> allAlinhamentos = null;
			List<Alinhamento> lista = new ArrayList<Alinhamento>();
			allAlinhamentos = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Alinhamento.class);
			
			for(int i=0; i< allAlinhamentos.size(); i++) {
				a = allAlinhamentos.get(i);
				if(a.getDataAlinhamento() != null) {
					lista.add(a);
				}
			}
			model.addAttribute("list", lista);
			mensagemSuccess = "Alinhamento excluido com sucesso!!";
			model.addAttribute("mensagemSuccess", mensagemSuccess);
			return "ListarAlinhamento";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}
			return "Data";
		}	
	}
}

