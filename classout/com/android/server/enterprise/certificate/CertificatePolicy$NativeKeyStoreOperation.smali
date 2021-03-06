.class Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeKeyStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mKeystoreUid:I

.field private mOperation:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILjava/util/Set;Ljava/util/Map;)V
    .registers 6
    .param p2, "operation"    # I
    .param p3, "keystoreUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 808
    .local p4, "deleteAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "installCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 809
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mOperation:I

    .line 810
    iput p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mKeystoreUid:I

    .line 811
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    .line 812
    iput-object p5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    .line 813
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/util/Set;
    .param p5, "x4"    # Ljava/util/Map;
    .param p6, "x5"    # Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .prologue
    .line 801
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILjava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x1

    .line 816
    iget v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mOperation:I

    packed-switch v4, :pswitch_data_8e

    .line 845
    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_a
    return-object v4

    .line 818
    :pswitch_b
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 819
    :try_start_12
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 820
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 821
    .local v1, "cert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$400(Ljava/security/cert/X509Certificate;)[B

    move-result-object v2

    .line 822
    .local v2, "certBytes":[B
    if-eqz v2, :cond_52

    .line 823
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 824
    .local v0, "alias":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v4

    iget v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mKeystoreUid:I

    const/4 v7, 0x1

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_24

    .line 831
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "certBytes":[B
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_4f
    move-exception v4

    monitor-exit v5
    :try_end_51
    .catchall {:try_start_12 .. :try_end_51} :catchall_4f

    throw v4

    .line 827
    .restart local v1    # "cert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "certBytes":[B
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_52
    const/4 v4, 0x0

    :try_start_53
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    monitor-exit v5

    goto :goto_a

    .line 831
    .end local v1    # "cert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "certBytes":[B
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_4f

    goto :goto_6

    .line 834
    :pswitch_5b
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 835
    :try_start_62
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 836
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 837
    .restart local v0    # "alias":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v4

    iget v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mKeystoreUid:I

    invoke-virtual {v4, v0, v6}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    goto :goto_70

    .line 840
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_88
    move-exception v4

    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_62 .. :try_end_8a} :catchall_88

    throw v4

    :cond_8b
    :try_start_8b
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_88

    goto/16 :goto_6

    .line 816
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_5b
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 801
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
