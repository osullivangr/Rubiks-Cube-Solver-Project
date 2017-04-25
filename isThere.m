function bool = isThere(k1,k2,k3,f1,f2,f3)
    if (k1 == f1)
        if (k2 == f2)
            if (k3 == f3)
                bool = true;
                return;
            end
            bool = false;
            return;
        elseif (k2 == f3)
            if (k3 == f2)
                bool = true;
                return;
            end
            bool = false;
            return;
        end
    elseif (k1 == f2)
        if (k2 == f1)
            if (k3 == f3)
                bool = true;
                return;
            end
            bool = false;
            return;
        elseif (k2 == f3)
            if (k3 == f1)
                bool = true;
                return;
            end
            bool = false;
            return;
        end
    elseif (k1 == f3)
        if (k2 == f2)
            if (k3 == f1)
                bool = true;
                return;
            end
            bool = false;
            return;
        elseif (k2 == f1)
            if (k3 == f2)
                bool = true;
                return;
            end
            bool = false;
            return;
        end
    end
    bool = false;
    return;
end

