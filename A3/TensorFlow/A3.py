'''Tutorial 4. In this program, a simple Multi-Layered Perceptron (MLP) is implemeted and trained. Placeholders are used to provide input.'''

# pylint: disable=C0413
# pylint: disable=C0103
# pylint: disable=E0401

import os
import tensorflow as tf # TesnorFlow Librarys
import csv # For csv importing etc
import matplotlib.pyplot as plt # For graphing and plotting etc

# Adjustable Values, Nodes, Learning Rate, and epochy 
nodeSize = 300 # More variation, more mutation
learnRate = 0.005 # Lower the learning rate the higher accuracy
iteration = 300000 # How many times it wil go through - epochy

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # Suppresses warnings

# Import csv file, assign coloums as inputX, inputY respectivly, no determined allocation size for memory
inputX = [] 
inputY = [] 
# Open and read in data_set.csv
with open('data_set.csv','r') as csvfile: 
    plots = csv.reader(csvfile, delimiter=',') 
    for row in plots: 
		# Add each line of the csv to the row array for X and Y
        inputX.append([float(row[0])]) 
        inputY.append([float(row[1])])

# Placeholders are used, tensorflow diag 32 type with shape of nil, 1 - labeled x and y respectivly
x = tf.placeholder(dtype=tf.float32, shape=[None, 1], name='x')
y = tf.placeholder(dtype=tf.float32, shape=[None, 1], name='y')

# MLP
def mlp_layer(in_x, w_shape, b_shape):
    '''mlp_layer'''
	# Using the get variable function with the passed through same shapes and random initializer with no conditions
    W = tf.get_variable(name='W', shape=w_shape, dtype=tf.float32,
                        initializer=tf.random_uniform_initializer())
    b = tf.get_variable(name='b', shape=b_shape, dtype=tf.float32,
                        initializer=tf.random_uniform_initializer())
	# Assign the output of the added variables with shape b					
    out_y = tf.add(tf.matmul(in_x, W), b)
	# Return the addition of the layer as passthrough
    return out_y

# Layer 1 computation
with tf.variable_scope('layer_1') as vs:
    h = mlp_layer(x, [1, nodeSize], [nodeSize])
    h = tf.nn.relu(h)
    vs.reuse_variables()

# Layer 2 computation
with tf.variable_scope('layer_2') as vs:
    y_ = mlp_layer(h, [nodeSize, 1], [1])

# Loss value for the mean squared error
loss = tf.losses.mean_squared_error(y, y_)
# Training of the MLP using the Adam Optimizer as suggested in class, please see variaible for assigned learn rate
training = tf.train.AdamOptimizer(learning_rate=learnRate).minimize(loss)

# We must initalize the tensorflow with both global and local
init = [tf.global_variables_initializer(), tf.local_variables_initializer()]

# Begin the learing session after everything is setup and imported
with tf.Session() as s:
	# Run the initializer for the session
    s.run(init)

	# After evaluating the shape, this section was removed and shaped on the import of the csv
    # x1 = s.run(tf.reshape(inputX, [101,1])) 
    # y2 = s.run(tf.reshape(inputY, [101,1]))

	# Begin the loop for the function of the assigned iteration steps.
    for i in range(0, iteration, 1):
		# Start the training 
        l, _ = s.run([loss, training], feed_dict={x: inputX, y: inputY})

		# Only print the 10 cycles of iterations - epochy ~ 1st Jan 1970 lol...
        if i % (iteration/10) == 0:
			# Print the trained value..
            print(l)
	
	# Assign the learning points to use for the plot
    p = s.run(y_, {x:inputX}) 
	# Plot the learning points
    plt.plot(inputX,p) 
	# Plot the origional csv values
    plt.plot(inputX, inputY) 
	# Label Axis etc...
    plt.xlabel('x') 
    plt.ylabel('y') 
	# Show plot
    plt.show()