package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelVideos implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	
	private String nomevideo;
	
	private String link;
	
	private String  pagina;

	private ModelLogin usuario_pai_id;

	private ModelLogin usuario_cad_id;
	
	
	
	

	public String getNomevideo() {
		return nomevideo;
	}

	public void setNomevideo(String nomevideo) {
		this.nomevideo = nomevideo;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getPagina() {
		return pagina;
	}

	public void setPagina(String pagina) {
		this.pagina = pagina;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}



	public ModelLogin getUsuario_pai_id() {
		return usuario_pai_id;
	}

	public void setUsuario_pai_id(ModelLogin usuario_pai_id) {
		this.usuario_pai_id = usuario_pai_id;
	}

	public ModelLogin getUsuario_cad_id() {
		return usuario_cad_id;
	}

	public void setUsuario_cad_id(ModelLogin usuario_cad_id) {
		this.usuario_cad_id = usuario_cad_id;
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
		ModelVideos other = (ModelVideos) obj;
		return Objects.equals(id, other.id);
	}

}