function bool = arrayEqual(u, v)
    if(length(u) ~= length(v))
        bool = false;
        return;
    else
        if(u == v)
            bool = true;
            return;
        end
    end
    bool = false;
end
