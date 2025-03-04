<section class="mt-50 pb-50">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-10 m-auto">
                <div class="contact-from-area  padding-20-row-col wow tmFadeInUp animated" style="visibility: visible;">
                    <h3 class="mb-10 text-center">{{ __('Drop Us a Line') }}</h3>
                    <p class="text-muted mb-30 text-center font-sm">{{ __('Contact Us For Any Questions') }}</p>

                    {!!
                        $form
                            ->setFormOption('class', 'contact-form-style contact-form')
                            ->setFormInputClass(' ')
                            ->setFormLabelClass('d-none sr-only')
                            ->setFormInputWrapperClass('form-group mb-20')
                            ->modify(
                                'submit',
                                'submit',
                                Botble\Base\Forms\FieldOptions\ButtonFieldOption::make()
                                    ->cssClass('submit submit-auto-width mt-30')
                                    ->label(__('Send message'))
                                    ->wrapperAttributes(['class' => 'col-12 text-center'])
                                    ->toArray(),
                                true
                            )
                            ->renderForm()
                    !!}
                </div>
            </div>
        </div>
    </div>
</section>
