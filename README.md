# Containerlab and netlab image for mac m1

The image to be able to launch labs [sflow](https://blog.sflow.com/)
and [bgplab](https://bgplabs.net/basic/) on mac m1.

> :warning:
> Arm64 arch isn't available for all network OS images

## How to run

```bash
docker run --rm -it --privileged --network host --pid="host" \
    -v /var/run/docker.sock:/var/run/docker.sock -v /run/netns:/run/netns \
    -v $(pwd):$(pwd) -w $(pwd) excite13/clab:0.1.0 bash
```
