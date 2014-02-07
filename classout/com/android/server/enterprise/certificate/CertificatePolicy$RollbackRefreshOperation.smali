.class Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollbackRefreshOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mOperation:I

.field private final mPriority:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 4
    .param p2, "operation"    # I

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 787
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    .line 788
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    .line 789
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V
    .registers 7
    .param p2, "operation"    # I
    .param p3, "priority"    # I

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 792
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    .line 796
    const/16 v0, -0x14

    if-lt p3, v0, :cond_2c

    const/16 v0, 0x13

    if-gt p3, v0, :cond_2c

    .end local p3    # "priority":I
    :goto_f
    iput p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    .line 798
    const-string v0, "CertificatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void

    .line 796
    .restart local p3    # "priority":I
    :cond_2c
    const/16 p3, 0xa

    goto :goto_f
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .prologue
    .line 782
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .prologue
    .line 782
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    return-void
.end method

.method private refreshNativeKeyStore()V
    .registers 15

    .prologue
    const/4 v4, 0x0

    .line 1009
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "nativeRemovedList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    .line 1013
    .local v13, "removedNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1014
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1015
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    const-string v3, "CACERT_"

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1016
    .local v7, "aliasList":[Ljava/lang/String;
    if-eqz v7, :cond_7e

    .line 1017
    move-object v8, v7

    .local v8, "arr$":[Ljava/lang/String;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_33
    if-ge v11, v12, :cond_7e

    aget-object v6, v8, v11

    .line 1018
    .local v6, "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 1019
    .local v10, "certBytes":[B
    if-eqz v10, :cond_7b

    .line 1020
    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1600([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 1021
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v9, :cond_7b

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v9, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .end local v9    # "cert":Ljava/security/cert/X509Certificate;
    :cond_7b
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 1030
    .end local v6    # "alias":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "certBytes":[B
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_7e
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    const-string v3, "USRCERT_"

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1031
    if-eqz v7, :cond_da

    .line 1032
    move-object v8, v7

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v12, v8

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_8f
    if-ge v11, v12, :cond_da

    aget-object v6, v8, v11

    .line 1033
    .restart local v6    # "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 1034
    .restart local v10    # "certBytes":[B
    if-eqz v10, :cond_d7

    .line 1035
    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1600([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 1036
    .restart local v9    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v9, :cond_d7

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v9, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    .end local v9    # "cert":Ljava/security/cert/X509Certificate;
    :cond_d7
    add-int/lit8 v11, v11, 0x1

    goto :goto_8f

    .line 1046
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "aliasList":[Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "certBytes":[B
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_da
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_1a .. :try_end_db} :catchall_10b

    .line 1049
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    .line 1052
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 1053
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v2, 0x1

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 1055
    .local v0, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1059
    .end local v0    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    :cond_ff
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v2, "nativeRemovedList"

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1061
    return-void

    .line 1046
    :catchall_10b
    move-exception v1

    :try_start_10c
    monitor-exit v2
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v1
.end method

.method private refreshSystemKeyStore()V
    .registers 16

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 955
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v5, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 956
    .local v8, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v5, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 957
    .local v10, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v14, "userRemovedList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v5, v14}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    .line 961
    .local v11, "removedUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v12

    .line 962
    .local v12, "systemAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 964
    .local v6, "alias":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 965
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1, v6, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 966
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_32

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v7, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 967
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 970
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 977
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_6e
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v13

    .line 978
    .local v13, "userAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7c
    :goto_7c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 979
    .restart local v6    # "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 980
    .restart local v7    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_7c

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v7, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 982
    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 987
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_a3
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    .line 990
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v3, "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 992
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 993
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 995
    .local v0, "operation":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 998
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v2, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 999
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v2, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1001
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v2, "userRemovedList"

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1002
    return-void
.end method

.method private rollbackNativeKeyStore()V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 915
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v12, "nativeRemovedList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v5, v12}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    .line 919
    .local v11, "removedNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v9, "removeEdmNativeAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 924
    .local v4, "installNativeCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 926
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v10, "removeFromRemovedNativeKeyStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 928
    .local v6, "alias":Ljava/lang/String;
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 929
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_33

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v7, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 930
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 935
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_5a
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 936
    .restart local v6    # "alias":Ljava/lang/String;
    invoke-interface {v11, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 940
    .end local v6    # "alias":Ljava/lang/String;
    :cond_6e
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 942
    .local v0, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 946
    .end local v0    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "removeFromRemovedNativeKeyStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7b
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 949
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v2, "nativeRemovedList"

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 951
    return-void
.end method

.method private rollbackSystemKeyStore()V
    .registers 18

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 856
    .local v9, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 857
    .local v14, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "userRemovedList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 859
    .local v16, "removedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v5, "installCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v10, "enabledUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v15, "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 865
    .local v7, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 866
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v2, v8, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 868
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 870
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 872
    :cond_66
    invoke-interface {v14, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    .line 876
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    :cond_6a
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 877
    .restart local v7    # "alias":Ljava/lang/String;
    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 881
    .end local v7    # "alias":Ljava/lang/String;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    .line 883
    .local v13, "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_94
    :goto_94
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 884
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 885
    .restart local v7    # "alias":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 886
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_94

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v2, v8, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 889
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 890
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 896
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :cond_c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 899
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 901
    .local v1, "operation":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v14}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "userRemovedList"

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 908
    return-void
.end method

.method private sendIntentToSettings()V
    .registers 5

    .prologue
    .line 841
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 843
    .local v1, "token":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 844
    .local v0, "refreshUi":Landroid/content/Intent;
    const-string v3, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 846
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    .end local v0    # "refreshUi":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_22
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 782
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 803
    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 804
    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    packed-switch v0, :pswitch_data_4c

    .line 830
    :goto_a
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->sendIntentToSettings()V

    .line 832
    const/4 v0, 0x0

    return-object v0

    .line 806
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 807
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStore()V

    .line 808
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore()V

    .line 809
    monitor-exit v1

    goto :goto_a

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v0

    .line 812
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 813
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStore()V

    .line 814
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore()V

    .line 815
    monitor-exit v1

    goto :goto_a

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v0

    .line 818
    :pswitch_33
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 819
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStore()V

    .line 820
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore()V

    .line 821
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStore()V

    .line 822
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore()V

    .line 823
    monitor-exit v1

    goto :goto_a

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v0

    .line 804
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_f
        :pswitch_33
    .end packed-switch
.end method
