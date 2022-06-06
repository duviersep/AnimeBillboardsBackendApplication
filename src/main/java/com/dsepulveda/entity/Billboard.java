package com.dsepulveda.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Getter
@Setter
@Table(name="billboard")
public class Billboard implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_billboard")
    private Long id;

    @Column(name="anime_name")
    private String animeName;

    private String creator;

    @Column(name="release_date")
    @Temporal(TemporalType.DATE)
    private Date releaseDate;

    @Column(name="finish_date")
    @Temporal(TemporalType.DATE)
    private Date finishDate;

    @Column(name="anime_description")
    private String description;

    @Column(name="url_image")
    private String urlImage;

}

