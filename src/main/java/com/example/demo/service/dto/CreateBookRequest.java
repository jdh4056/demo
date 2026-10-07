package com.example.demo.service.vo;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public record CreateBookRequest(
        @NotNull(message = "카테고리 ID는 필수입니다.")
        Long categoryId,

        @NotBlank(message = "제목은 필수 입력 항목입니다.")
        @Size(max = 255, message = "제목은 255자 이하여야 합니다.")
        String title,

        @Size(max = 1000, message = "설명은 1000자 이하여야 합니다.")
        String description,

        @NotBlank(message = "저자는 필수 입력 항목입니다.")
        @Size(max = 100, message = "저자명은 100자 이하여야 합니다.")
        String author,

        @Size(max = 20, message = "ISBN은 20자 이하여야 합니다.")
        String isbn,

        Integer publishedYear,

        Integer totalCopies
) {}