package com.dsepulveda.repository;

import com.dsepulveda.entity.Billboard;
import org.springframework.data.repository.CrudRepository;

public interface IBillboardRepository extends CrudRepository<Billboard,Long> {
}
