<?php

namespace Drupal\openideal_challenge\Service;

/**
 * OpenidealChallengeServiceInterface file.
 */
interface OpenidealChallengeServiceInterface {

  /**
   * Processing for closing / opening scheduled nodes.
   *
   * @param string $operation
   *   The name of operation 'open/close'.
   *
   * @return bool
   *   TRUE if any node has been closed / opened, FALSE otherwise.
   */
  public function challengeOpenCloseOperation($operation = 'open');

}
