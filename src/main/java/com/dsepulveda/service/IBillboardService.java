package com.dsepulveda.service;

import com.dsepulveda.entity.Billboard;
import java.util.List;

public interface IBillboardService {

    public List<Billboard> findAll();

    public Billboard findById(Long id);

    public Billboard save(Billboard billboard);

    public void delete(Long id);

}

