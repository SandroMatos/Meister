<?php
/**declare(strict_types=1);**/

namespace Application\Controller;

use Laminas\Mvc\Controller\AbstractActionController;
use Laminas\View\Model\ViewModel;

class LoginController extends AbstractActionController
{
    public function indexAction()
    {
       $viewModel = new ViewModel();
       $viewModel->setTerminal(terminate:true);

        return $$viewModel();
    }
}