package com.ducmai444.proxyclient.business.product.model.response;

import java.io.Serial;
import java.io.Serializable;
import java.util.Collection;

import com.ducmai444.proxyclient.business.product.model.CategoryDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class CategoryProductServiceCollectionDtoResponse implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    private Collection<CategoryDto> collection;

}
