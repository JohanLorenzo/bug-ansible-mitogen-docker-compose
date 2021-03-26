# Minimal configuration to show [mitogen-hq/mitogen#823](https://github.com/mitogen-hq/mitogen/issues/823)

This little github project shows a bug in `mitogen 0.3.0rc1` when used with `docker-compose`

## Steps to reproduce

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
