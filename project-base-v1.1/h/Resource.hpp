//
// Created by os on 9/17/24.
//

#ifndef PROJECT_BASE_V1_1_RESOURCE_HPP
#define PROJECT_BASE_V1_1_RESOURCE_HPP


class Resource {
public:
    Resource(int res) : res(res), threads(0) {}

private:
    int res;
    int threads;
};


#endif //PROJECT_BASE_V1_1_RESOURCE_HPP
