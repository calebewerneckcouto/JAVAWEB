package model;
import java.io.Serializable;
import java.util.Objects;

public class ModelCalculadora implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long id;
	private String impressora;
	private String filamento;
	private String peso;
	private String tempoimpressao;
	private String preparacao;
	private String fatiamento;
	private String trocamaterial;
	private String transferenciaeinicio;
	private String somapreparacao;
	private String remocaoimpressao;
	private String remocaosuportes;
	private String trabalhoadicional;
	private String somaposprocessamento;
	private String consumiveis;
	private String filamentovalor;
	private String eletricidadevalor;
	private String depreciacaomaquina;
	private String preparacaocustos;
	private String posprocessamentocustos;
	private String consumiveiscustos;
	private String subtotal;
	private String incluindoperdas;
	private String lucroporcentagem;
	private String lucrovalor;
	private String precofinal;
	
	
	
	
	
	public String getPrecofinal() {
		return precofinal;
	}
	public void setPrecofinal(String precofinal) {
		this.precofinal = precofinal;
	}
	public String getLucrovalor() {
		return lucrovalor;
	}
	public void setLucrovalor(String lucrovalor) {
		this.lucrovalor = lucrovalor;
	}
	public String getLucroporcentagem() {
		return lucroporcentagem;
	}
	public void setLucroporcentagem(String lucroporcentagem) {
		this.lucroporcentagem = lucroporcentagem;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getImpressora() {
		return impressora;
	}
	public void setImpressora(String impressora) {
		this.impressora = impressora;
	}
	public String getFilamento() {
		return filamento;
	}
	public void setFilamento(String filamento) {
		this.filamento = filamento;
	}
	public String getPeso() {
		return peso;
	}
	public void setPeso(String peso) {
		this.peso = peso;
	}
	public String getTempoimpressao() {
		return tempoimpressao;
	}
	public void setTempoimpressao(String tempoimpressao) {
		this.tempoimpressao = tempoimpressao;
	}
	public String getPreparacao() {
		return preparacao;
	}
	public void setPreparacao(String preparacao) {
		this.preparacao = preparacao;
	}
	public String getFatiamento() {
		return fatiamento;
	}
	public void setFatiamento(String fatiamento) {
		this.fatiamento = fatiamento;
	}
	public String getTrocamaterial() {
		return trocamaterial;
	}
	public void setTrocamaterial(String trocamaterial) {
		this.trocamaterial = trocamaterial;
	}
	public String getTransferenciaeinicio() {
		return transferenciaeinicio;
	}
	public void setTransferenciaeinicio(String transferenciaeinicio) {
		this.transferenciaeinicio = transferenciaeinicio;
	}
	public String getSomapreparacao() {
		return somapreparacao;
	}
	public void setSomapreparacao(String somapreparacao) {
		this.somapreparacao = somapreparacao;
	}
	public String getRemocaoimpressao() {
		return remocaoimpressao;
	}
	public void setRemocaoimpressao(String remocaoimpressao) {
		this.remocaoimpressao = remocaoimpressao;
	}
	public String getRemocaosuportes() {
		return remocaosuportes;
	}
	public void setRemocaosuportes(String remocaosuportes) {
		this.remocaosuportes = remocaosuportes;
	}
	public String getTrabalhoadicional() {
		return trabalhoadicional;
	}
	public void setTrabalhoadicional(String trabalhoadicional) {
		this.trabalhoadicional = trabalhoadicional;
	}
	public String getSomaposprocessamento() {
		return somaposprocessamento;
	}
	public void setSomaposprocessamento(String somaposprocessamento) {
		this.somaposprocessamento = somaposprocessamento;
	}
	public String getConsumiveis() {
		return consumiveis;
	}
	public void setConsumiveis(String consumiveis) {
		this.consumiveis = consumiveis;
	}
	public String getFilamentovalor() {
		return filamentovalor;
	}
	public void setFilamentovalor(String filamentovalor) {
		this.filamentovalor = filamentovalor;
	}
	public String getEletricidadevalor() {
		return eletricidadevalor;
	}
	public void setEletricidadevalor(String eletricidadevalor) {
		this.eletricidadevalor = eletricidadevalor;
	}
	public String getDepreciacaomaquina() {
		return depreciacaomaquina;
	}
	public void setDepreciacaomaquina(String depreciacaomaquina) {
		this.depreciacaomaquina = depreciacaomaquina;
	}
	public String getPreparacaocustos() {
		return preparacaocustos;
	}
	public void setPreparacaocustos(String preparacaocustos) {
		this.preparacaocustos = preparacaocustos;
	}
	public String getPosprocessamentocustos() {
		return posprocessamentocustos;
	}
	public void setPosprocessamentocustos(String posprocessamentocustos) {
		this.posprocessamentocustos = posprocessamentocustos;
	}
	public String getConsumiveiscustos() {
		return consumiveiscustos;
	}
	public void setConsumiveiscustos(String consumiveiscustos) {
		this.consumiveiscustos = consumiveiscustos;
	}
	public String getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}
	public String getIncluindoperdas() {
		return incluindoperdas;
	}
	public void setIncluindoperdas(String incluindoperdas) {
		this.incluindoperdas = incluindoperdas;
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
		ModelCalculadora other = (ModelCalculadora) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
	
	
	
	
	
}
