package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelGeral implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private Long id;
	private String custoenergia;
	private String custodetrabalho; 
	private String taxadeperdas;
	private String unidademonetaria;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCustoenergia() {
		return custoenergia;
	}
	public void setCustoenergia(String custoenergia) {
		this.custoenergia = custoenergia;
	}
	public String getCustodetrabalho() {
		return custodetrabalho;
	}
	public void setCustodetrabalho(String custodetrabalho) {
		this.custodetrabalho = custodetrabalho;
	}
	public String getTaxadeperdas() {
		return taxadeperdas;
	}
	public void setTaxadeperdas(String taxadeperdas) {
		this.taxadeperdas = taxadeperdas;
	}
	public String getUnidademonetaria() {
		return unidademonetaria;
	}
	public void setUnidademonetaria(String unidademonetaria) {
		this.unidademonetaria = unidademonetaria;
	}
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ModelGeral other = (ModelGeral) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
	
	
	
	




}
