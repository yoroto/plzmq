#include <sicstus/sicstus.h>
#include <zmq.h>

SP_integer plzmq_errno_c()
{
	return zmq_errno();
}

const char *plzmq_strerror_c(SP_integer errnum)
{
	return zmq_strerror(errnum);
}

void plzmq_version_c(SP_integer *major, SP_integer *minor, SP_integer *patch)
{
	int *major_i = 0, *minor_i = 0, *patch_i = 0;
	zmq_version(major_i, minor_i, patch_i);
	*major = *major_i;
	*minor = *minor_i;
	*patch = *patch_i;
}
