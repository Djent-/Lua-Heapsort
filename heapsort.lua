function heapSort(a)
	c = #a
	heap(a,c)
	e = c

	while e > 1 do
		swap(a,e,1)
		e = e - 1
		siftDown(a,1,e)
	end
end

function heap(a,c)
	start = math.floor(c/2)
	while start >= 1 do
		siftDown(a,start,c)
		start = start - 1
	end
end

function siftDown(a,start,en)
	root = start

	while root * 2 <= en do
		child = root * 2
		if child + 1 <= en and a[child] < a[child + 1] then
			child = child + 1
		end
		if a[root] < a[child] then
			swap(a,root,child)
			root = child
		else
			break
		end
	end
end

function swap(f,g,h)
	f[g], f[h] = f[h], f[g]
end
