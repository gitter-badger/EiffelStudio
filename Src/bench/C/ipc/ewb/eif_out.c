/*

 ######     #    ######           ####   #    #   #####           ####
 #          #    #               #    #  #    #     #            #    #
 #####      #    #####           #    #  #    #     #            #
 #          #    #               #    #  #    #     #     ###    #
 #          #    #               #    #  #    #     #     ###    #    #
 ######     #    #      #######   ####    ####      #     ###     ####

	Externals for dealing with sent (outgoing) requests.
*/

#include "eif_io.h"
#include "eiffel.h"
#include "stack.h"

rt_public void send_rqst_0 (long int code)
{
	Request rqst;
	STREAM *sp = stream_by_fd[EWBOUT];
	

#ifdef USE_ADD_LOG
    add_log(100, "sending request 0: %ld from es4", code);
#endif

	Request_Clean (rqst);
	rqst.rq_type = (int) code;
	send_packet(writefd(sp), &rqst);
}

rt_public void send_rqst_1 (long int code, long int info1)
{
	Request rqst;
	STREAM *sp = stream_by_fd[EWBOUT];


#ifdef USE_ADD_LOG
    add_log(100, "sending request 1: %ld from es4", code);
#endif
	Request_Clean (rqst);
	rqst.rq_type = (int) code;
	rqst.rq_opaque.op_first = (int) info1;
	send_packet(writefd(sp), &rqst);
}

rt_public void send_rqst_2 (long int code, long int info1, long int info2)
{
	Request rqst;
	STREAM *sp = stream_by_fd[EWBOUT];

#ifdef USE_ADD_LOG
    add_log(100, "sending request 2: %ld from es4", code);
#endif

	Request_Clean (rqst);
	rqst.rq_type = (int) code;
	rqst.rq_opaque.op_first = (int) info1;
	rqst.rq_opaque.op_second = (int) info2;
	send_packet(writefd(sp), &rqst);
}

rt_public void send_rqst_3 (long int code, long int info1, long int info2, long int info3)
{
	Request rqst;
	STREAM *sp = stream_by_fd[EWBOUT];

#ifdef USE_ADD_LOG
    add_log(100, "sending request 3: %ld from es4", code);
#endif

	Request_Clean (rqst);
	rqst.rq_type = (int) code;
	rqst.rq_opaque.op_first = (int) info1;
	rqst.rq_opaque.op_second = (int) info2;
	rqst.rq_opaque.op_third = (long) info3;
	send_packet(writefd(sp), &rqst);
}

rt_public EIF_BOOLEAN recv_ack (void)
{
	Request pack;
	STREAM *sp = stream_by_fd[EWBOUT];

	Request_Clean (pack);
	if (-1 == recv_packet(readfd(sp), &pack))
		return (EIF_BOOLEAN) 0;


#ifdef USE_ADD_LOG
    add_log(100, "receiving request : %ld for es4", pack.rq_type);
#endif

	switch (pack.rq_type) {
	case ACKNLGE:

#ifdef USE_ADD_LOG
	    add_log(100, "acknowledge request : %ld for es4", pack.rq_ack.ak_type);
#endif
		switch (pack.rq_ack.ak_type) {
		case AK_OK:
			return (EIF_BOOLEAN) 1;
		case AK_ERROR:
			return (EIF_BOOLEAN) 0;
		default:
			return (EIF_BOOLEAN) 0;
		}
		break;
	default:
		return (EIF_BOOLEAN) 0;
	}
}

rt_public EIF_BOOLEAN recv_dead (void)
{
		/* Wait for a message saying that the application is dead */

	Request pack;
	STREAM *sp = stream_by_fd[EWBOUT];

	Request_Clean (pack);
	if (-1 == recv_packet(readfd(sp), &pack))
		return (EIF_BOOLEAN) 0;

#ifdef USE_ADD_LOG
    add_log(100, "receiving request : %ld for es4", pack.rq_type);
#endif

	switch (pack.rq_type) {
	case DEAD:
		return (EIF_BOOLEAN) 1;
	default:
		return (EIF_BOOLEAN) 0;
	}
}

rt_public void c_send_str (char *s)
{
	STREAM *sp = stream_by_fd[EWBOUT];
	send_str (sp, s);
}

rt_public void c_twrite (char *s, long int l)
{
	twrite (s, (int) l);
}

EIF_REFERENCE c_tread (void)
{

	int size;
	char *str;
	EIF_REFERENCE e_str;

	str = tread (&size);
	e_str = (EIF_REFERENCE) makestr (str, size);
	free (str);
	return e_str;
}

rt_public int async_shell(char *cmd)
{
	/* Send a shell command to be performed in the background and return the
	 * job number of the request. The daemon will fork and execute the command,
	 * then send the command status.
	 */

	return background(cmd);
}

rt_public void send_run_request(long int code, char *buf, long int len)
{
/*
	Request rqst;
	STREAM *sp = stream_by_fd[EWBOUT];

	Request_Clean (rqst);
	rqst.rq_type = code;

	if (-1 == send_packet (writefd(sp), &rqst))
		error

	? = twrite (buf, size);

	ACK ???
*/
}


request_dump (void)
{
	send_rqst_1 (DUMP, 2L /* ST_FULL */);
}
	

