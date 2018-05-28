#!/usr/bin/env python
# coding: utf-8
import random


buzz = ['continuous testing', 'continuous integration','continuous deployment','continuous improvement','devops']
adjectives = ['complete', 'modern', 'self-service', 'integrated', 'end-to-end']
adverbs = ['remarkably', 'enormously', 'substantially', 'significantly','seriously']
verbs = ['accelerates', 'improves', 'enhances', 'revamps', 'boosts']
n=len(buzz)
for x in range(n):
        d=random.randint(0,n-1)
        e=random.randint(0,n-1)
        f=random.randint(0,n-1)
        g=random.randint(0,n-1)
        h=random.randint(0,n-1)
        print(buzz[d]+" "+buzz[e]+" "+adjectives[f]+" "+adverbs[g]+" "+verbs[h])

