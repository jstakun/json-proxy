package com.redhat.waw.ssl;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Named;

import org.apache.http.conn.ssl.NoopHostnameVerifier;

import io.quarkus.runtime.annotations.RegisterForReflection;

@ApplicationScoped
@Named("noop")
@RegisterForReflection
public class NoopHostVerifier extends NoopHostnameVerifier {

}
