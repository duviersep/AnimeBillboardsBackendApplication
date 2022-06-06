package com.dsepulveda.service;

import com.dsepulveda.entity.Billboard;
import com.dsepulveda.repository.IBillboardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
public class BillboardServiceImpl implements IBillboardService{

    @Autowired
    private IBillboardRepository billboardRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Billboard> findAll() {
        return (List<Billboard>) billboardRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Billboard findById(Long id) {
        return billboardRepository.findById(id).orElse(null);
    }

    @Override
    @Transactional
    public Billboard save(Billboard billboard) {
        return billboardRepository.save(billboard);
    }

    @Override
    @Transactional
    public void delete(Long id) {
        billboardRepository.deleteById(id);
    }
}
