class Tree
	attr_accessor :children, :node_name

	# problem: modify the tree so it accepts a nested hash for initialization

	# starter code was:
	# def initialize(name, children=[])
	# @children = children
	# @node_name = name
	#end

	# and would be initialized like so:
	#ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])

	def initialize(h={})
		@node_name = h.keys.first
		@children = h.values.map {|x| Tree.new(x)}
	end

	def visit_all(&block)
		visit &block
		children.each{|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new({'grandpa' => {'dad' => {'sister' => {}, 'brother' => {} }, 'uncle' => {'cousin' => {} }}})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

