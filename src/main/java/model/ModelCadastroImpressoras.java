package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelCadastroImpressoras implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	
	private Long id;
	private String nomedaimpressora;
	private String diametrodomaterial;
	private String preco;
	private String tempodepreciacao;
	private String custodereparos;
	private String consumodeenergia;
	private String depreciacao;
	private String idusuariologado;
	
	
	
	
	public String getIdusuariologado() {
		return idusuariologado;
	}
	public void setIdusuariologado(String idusuariologado) {
		this.idusuariologado = idusuariologado;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNomedaimpressora() {
		return nomedaimpressora;
	}
	public void setNomedaimpressora(String nomedaimpressora) {
		this.nomedaimpressora = nomedaimpressora;
	}
	public String getDiametrodomaterial() {
		return diametrodomaterial;
	}
	public void setDiametrodomaterial(String diametrodomaterial) {
		this.diametrodomaterial = diametrodomaterial;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	public String getTempodepreciacao() {
		return tempodepreciacao;
	}
	public void setTempodepreciacao(String tempodepreciacao) {
		this.tempodepreciacao = tempodepreciacao;
	}
	public String getCustodereparos() {
		return custodereparos;
	}
	public void setCustodereparos(String custodereparos) {
		this.custodereparos = custodereparos;
	}
	public String getConsumodeenergia() {
		return consumodeenergia;
	}
	public void setConsumodeenergia(String consumodeenergia) {
		this.consumodeenergia = consumodeenergia;
	}
	public String getDepreciacao() {
		return depreciacao;
	}
	public void setDepreciacao(String depreciacao) {
		this.depreciacao = depreciacao;
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
		ModelCadastroImpressoras other = (ModelCadastroImpressoras) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
	

}
