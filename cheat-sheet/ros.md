# ROS Humble cheat sheet

Note, the following commands assume your ros workspace is `ros2_ws` and your target language is python.

## Package 
Create a package
```bash
cd target/package/path
ros2 pkg create --build-type ament_python --license Apache-2.0 my_package
```

Create a package with an empty node
```bash	
cd target/package/path
ros2 pkg create --build-type ament_python --license Apache-2.0 --node-name my_node my_package
```

Build the workspace
```bash
cd ros2_ws
colcon build
```

Build a single package
```bash
cd ros2_ws
colcon build --packages-select <package_name>
```

Source the workspace
```bash
cd ros2_ws
source install/setup.bash
```

Run a node
```bash
ros2 run <package_name> <node_name>
```

## Launch script

Create a launch script
```bash
cd target/package/path
mkdir launch
touch launch/my_launch.launch.py
```

Place the following content in the launch script
```python
from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='my_package',
            executable='my_node',
            name='my_node'
        ),
        # Add more nodes here
    ])
```

Edit the setup.py file to include the launch script
```python
# Complete the data_files section in the setup.py file
setup(
    ...
    data_files=[
        # Already existing data_files
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        # Add the launch script here
        (os.path.join('share', package_name), [
            'launch/my_launch.launch.py',
            # Add more launch scripts here
        ]),
    ],
    ...
)
```
Build and source the workspace
```bash
cd ros2_ws
colcon build
source install/setup.bash
```

Run the launch script
```bash
ros2 launch my_package my_launch.launch.py
```

This will start all the nodes defined in the launch script.


