# Boot2Docker Packer Template

This repository contains a [Packer](https://www.packer.io) template necessary to build a [Vagrant](https://www.vagrantup.com)-compatible [Boot2Docker](http://boot2docker.io) box.

## Usage

The box is available on [Vagrant Cloud](https://app.vagrantup.com/31z4/boxes/boot2docker), making it very easy to use it:

    $ vagrant init 31z4/boot2docker
    $ vagrant up

## Building the Box

If you want to recreate the box, rather than using the binary, then you can use the Packer template within this repository to do so in seconds.

To build the box, first install the following prerequisites:

* [Packer](http://www.packer.io)
* [VirtualBox](http://www.virtualbox.org)
* [Vagrant](http://www.vagrantup.com)

Then prepare the `vars.json` file with the following contents:

```json
{
  "box_tag": "user/tag",
  "access_token": "secret"
}
```

Then run this command to build the box and push it to Vagrant Cloud under the specified box tag:

    $ packer build -var-file=vars.json template.json

## Contributing

Contributions are greatly appreciated. At this stage, the maintainers are most interested in adding support for additional builders and post-processors to the template.

The project follows the typical GitHub pull request model. Before starting any work, please either comment on an existing issue, or file a new one.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
