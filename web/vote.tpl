[votelist]
                              <!-- Voting question start -->
                      <p>{title}</p>
                        <!-- Voting question end -->
                              <!-- Voting answers start -->
                              <form method="post" name="vote" action=''>
                  {list}
                                <input type="hidden" name="vote_action" value="vote" />
                                <input type="hidden" name="vote_id" id="vote_id" value="1" />
                                <input type="image" src="{THEME}/images/votbtn.png" onclick="doVote('vote'); return false;" value="����������" style="border:none; margin-bottom: 2px;" />
                              </form>
                              <!-- Voting answers end -->
                              <!-- Voting results start -->
                              <form method="post" name="vote_result" action=''>
                               <input type="hidden" name="vote_action" value="results" />
                               <input type="hidden" name="vote_id" value="1" />
                               <input type="image" style="border: none;" src="{THEME}/images/votebtn.png" onclick="doVote('results'); return false;"  value="����������" />
                              </form>
                              <!-- Voting results end -->
[/votelist]
[voteresult]
                              <!-- Voting question start -->
                              <p>{title}</p>
                              <!-- Voting question end -->
                              <!-- Voting answers start -->
                              {list}
                              <!-- Voting answers end -->
                              <!-- Summary start -->
                              <p><strong>����� �������������:</strong> {votes}</p>
                              <br /><a href="" onclick="ShowAllVotes(); return false;">�������� ��� ������</a>
                              <!-- Summary end -->
[/voteresult]