:- module(plzmq_i,
          [plzmq_errno/1,
           plzmq_strerror/2,
           plzmq_version/3]).

foreign(plzmq_errno_c, plzmq_errno([-integer])).

foreign(plzmq_strerror_c, plzmq_strerror(+integer, [-string])).

foreign(plzmq_version_c, plzmq_version(-integer, -integer, -integer)).

foreign_resource(plzmq_i,
                 [plzmq_errno_c,
                  plzmq_strerror_c,
                  plzmq_version_c]).