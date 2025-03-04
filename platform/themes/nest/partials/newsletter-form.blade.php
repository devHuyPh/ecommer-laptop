@if (is_plugin_active('newsletter'))
    {!!
        Botble\Newsletter\Forms\Fronts\NewsletterForm::create()
             ->remove(['wrapper_before', 'wrapper_after'])
             ->setFormOption('class', 'newsletter-form')
             ->addBefore(
                 'email',
                 'open_wrapper',
                 Botble\Base\Forms\Fields\HtmlField::class,
                 Botble\Base\Forms\FieldOptions\HtmlFieldOption::make()
                     ->content('<div class="form-subscribe d-flex">')
                     ->toArray()
             )
             ->addAfter(
                 'submit',
                 'close_wrapper',
                 Botble\Base\Forms\Fields\HtmlField::class,
                 Botble\Base\Forms\FieldOptions\HtmlFieldOption::make()
                     ->content('</div>')
                     ->toArray()
             )
             ->modify('submit', 'submit', [
                 'attr' => [
                     'class' => 'btn',
                 ],
             ])
             ->add(
                 'after_submit_form_wrapper_before',
                 Botble\Base\Forms\Fields\HtmlField::class,
                 Botble\Base\Forms\FieldOptions\HtmlFieldOption::make()
                     ->content('<div class="captcha-render-section">')
                     ->toArray()
             )
             ->add(
                 'after_submit_form_wrapper_after',
                 Botble\Base\Forms\Fields\HtmlField::class,
                 Botble\Base\Forms\FieldOptions\HtmlFieldOption::make()
                     ->content('</div>')
                     ->toArray()
             )
             ->setFormEndKey('after_submit_form_wrapper_after')
             ->renderForm();
    !!}
@endif
