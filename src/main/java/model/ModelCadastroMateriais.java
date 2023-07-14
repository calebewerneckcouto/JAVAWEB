package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelCadastroMateriais implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	
	private Long id;
	private String fabricante;
	private String diametro;
	private String precorolo;
	private String tamanhorolo;
	private String densidade;
	private String temperaturanozzle;
	private String temperaturamesa;
	private String comprimentorolo;
	private String preco;
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
	public String getFabricante() {
		return fabricante;
	}
	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	public String getDiametro() {
		return diametro;
	}
	public void setDiametro(String diametro) {
		this.diametro = diametro;
	}
	public String getPrecorolo() {
		return precorolo;
	}
	public void setPrecorolo(String precorolo) {
		this.precorolo = precorolo;
	}
	public String getTamanhorolo() {
		return tamanhorolo;
	}
	public void setTamanhorolo(String tamanhorolo) {
		this.tamanhorolo = tamanhorolo;
	}
	public String getDensidade() {
		return densidade;
	}
	public void setDensidade(String densidade) {
		this.densidade = densidade;
	}
	public String getTemperaturanozzle() {
		return temperaturanozzle;
	}
	public void setTemperaturanozzle(String temperaturanozzle) {
		this.temperaturanozzle = temperaturanozzle;
	}
	public String getTemperaturamesa() {
		return temperaturamesa;
	}
	public void setTemperaturamesa(String temperaturamesa) {
		this.temperaturamesa = temperaturamesa;
	}
	public String getComprimentorolo() {
		return comprimentorolo;
	}
	public void setComprimentorolo(String comprimentorolo) {
		this.comprimentorolo = comprimentorolo;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
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
		ModelCadastroMateriais other = (ModelCadastroMateriais) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
	
	
	
	
}