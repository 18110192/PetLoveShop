package com.stc.petlove.repositories;

import com.stc.petlove.entities.DatCho;
import com.stc.petlove.entities.DichVu;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface DatChoRepository extends MongoRepository<DatCho, String> {
}
