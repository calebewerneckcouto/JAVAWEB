package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelVideoNome implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private Long id;
	private String pagina;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPagina() {
		return pagina;
	}
	public void setPagina(String pagina) {
		this.pagina = pagina;
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
		ModelVideoNome other = (ModelVideoNome) obj;
		return Objects.equals(id, other.id);
	}

	
}
