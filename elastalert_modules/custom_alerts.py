from elastalert.alerts import Alerter, BasicMatchString

class MITREAttack(Alerter):
    """This rule is exclusively used to classify rules in ElasticSearch"""

    required_options = set(['attack_tactic', 'attack_name', 'attack_id'])

    def alert(self, matches):
        '''Alerting does nothing, because this is solely for classification'''
        pass

    def get_info(self):
        '''This information is logged into ElasticSearch for us to use'''
        return {'type': 'MITREAttack',
                'attack_tactic': self.rule['attack_tactic'],
                'attack_name': self.rule['attack_name'],
                'attack_id': self.rule['attack_id']}
