package com.dsepulveda.controller;

import com.dsepulveda.entity.Billboard;
import com.dsepulveda.service.IBillboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.Map;

@CrossOrigin(origins = {"http://localhost:3000/"})
@RestController
@RequestMapping("/")
public class BillboardController {

    @Autowired
    private IBillboardService billboardService;

    @GetMapping("/billboards")
    public ResponseEntity<Map<String, Object>> index(){
        Map<String, Object> response = new LinkedHashMap<>();
        response.put("response", billboardService.findAll());

        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("billboards/{id}")
    public ResponseEntity<Map<String, Object>> show(@PathVariable Long id){
        Map<String, Object> response = new LinkedHashMap<>();
        response.put("response", billboardService.findById(id));

        return new ResponseEntity<>(response, HttpStatus.OK);

    }

    @PostMapping("/billboards")
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseEntity<Map<String, Object>> create(@RequestBody Billboard billboard){
        Map<String, Object> response = new LinkedHashMap<>();
        response.put("response", billboardService.save(billboard));

        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PutMapping("/billboards/{id}")
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseEntity<Map<String, Object>> update(@RequestBody Billboard billboard, @PathVariable Long id){
        Billboard currentBillboard = billboardService.findById(id);

        currentBillboard.setAnimeName(billboard.getAnimeName());
        currentBillboard.setCreator(billboard.getCreator());
        currentBillboard.setDescription(billboard.getDescription());
        currentBillboard.setFinishDate(billboard.getFinishDate());
        currentBillboard.setReleaseDate(billboard.getReleaseDate());
        currentBillboard.setUrlImage(billboard.getUrlImage());

        Map<String, Object> response = new LinkedHashMap<>();
        response.put("response", billboardService.save(currentBillboard));

        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @DeleteMapping("/billboards/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id){
        billboardService.delete(id);
    }
}
