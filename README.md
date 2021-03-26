# TODO: Add link to mitogen issue

This little github project shows a bug in mitogen 0.3.0rc when used with docker-compose

## Setup

```bash
./run.sh
```

## Expected results

Playbook runs with no error

## Actual results

```
TASK [Start docker-compose] ***************************************************************************************************************************************************************************************
fatal: [localhost]: FAILED! => {"changed": false, "msg": "Error: Module unable to decode valid JSON on stdin.  Unable to figure out what parameters were passed"}
```

## Additional notes

 * If you comment out `strategy = mitogen_linear` in ansible.cfg to use Ansible's default behavior, then the playbook turns green.
 * Affected versions are visible and pinned in `requirements/base.txt`
