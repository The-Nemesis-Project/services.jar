.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
.super Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseIntegrityServiceAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .registers 2

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;-><init>()V

    .line 561
    return-void
.end method


# virtual methods
.method public addFingerPrint(ILjava/lang/String;[B)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "fingerprint"    # [B

    .prologue
    .line 924
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2a

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISL addFingerPrint Uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Package is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_2a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 926
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "addFingerPrint"

    invoke-virtual {p0, p3, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    .line 927
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v1, "fpCurrent"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 930
    const-string v1, "fpDirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    const-string v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public checkResult(IILjava/lang/String;[B[BI)V
    .registers 15
    .param p1, "version"    # I
    .param p2, "scanType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "baselineFingerPrint"    # [B
    .param p5, "currentFingerPrint"    # [B
    .param p6, "opType"    # I

    .prologue
    .line 735
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in checkResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 740
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onViolation(IILjava/lang/String;[B[BI)V

    .line 742
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_46

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISA reported checkResult for scan type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_46} :catch_47

    .line 747
    :cond_46
    :goto_46
    return-void

    .line 744
    :catch_47
    move-exception v7

    .line 745
    .local v7, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public clearFingerPrintFlag()Z
    .registers 3

    .prologue
    .line 1019
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL ClearFingerPrintFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->clearFingerPrint()Z

    move-result v0

    return v0
.end method

.method public commit()Z
    .registers 3

    .prologue
    .line 879
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL commit "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->commitFingerPrint()Z

    move-result v0

    return v0
.end method

.method public commitFingerPrint()Z
    .registers 4

    .prologue
    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "status":Z
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISL commitFingerPrint "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_10
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->commitFingerPrint()Z

    move-result v0

    .line 1033
    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->clearFingerPrintFlag()Z

    .line 1038
    :cond_20
    return v0
.end method

.method public computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V
    .registers 24
    .param p1, "file"    # Ljava/io/File;
    .param p2, "result"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    .prologue
    .line 594
    if-nez p1, :cond_12

    .line 595
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_11

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    const-string v18, "computeFileHash - invalid input"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_11
    :goto_11
    return-void

    .line 600
    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    .line 602
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_64

    .line 603
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File Count -- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File -- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_64
    const/4 v11, 0x0

    .line 609
    .local v11, "permissions":B
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_70

    .line 610
    const/16 v17, 0x100

    move/from16 v0, v17

    int-to-byte v11, v0

    .line 612
    :cond_70
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_7b

    .line 613
    or-int/lit8 v17, v11, 0x10

    move/from16 v0, v17

    int-to-byte v11, v0

    .line 615
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canExecute()Z

    move-result v17

    if-eqz v17, :cond_86

    .line 616
    or-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    int-to-byte v11, v0

    .line 619
    :cond_86
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->permissionDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/security/MessageDigest;->update(B)V

    .line 623
    :try_start_8f
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$600(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/security/MessageDigest;->update([B)V
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8f .. :try_end_a0} :catch_be

    .line 630
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_108

    .line 631
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 632
    .local v16, "subFiles":[Ljava/io/File;
    if-eqz v16, :cond_e4

    .line 633
    move-object/from16 v2, v16

    .local v2, "arr$":[Ljava/io/File;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_b0
    if-ge v6, v9, :cond_108

    aget-object v15, v2, v6

    .line 634
    .local v15, "subFile":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    .line 633
    add-int/lit8 v6, v6, 0x1

    goto :goto_b0

    .line 624
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v15    # "subFile":Ljava/io/File;
    .end local v16    # "subFiles":[Ljava/io/File;
    :catch_be
    move-exception v4

    .line 625
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v17, "algorithm %s does not exist"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "UTF-8"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 626
    .local v10, "msg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 638
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "msg":Ljava/lang/String;
    .restart local v16    # "subFiles":[Ljava/io/File;
    :cond_e4
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_108

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "directory is empty"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v16    # "subFiles":[Ljava/io/File;
    :cond_108
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1c7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_1c7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_1c7

    .line 644
    const/4 v7, 0x0

    .line 648
    .local v7, "is":Ljava/io/InputStream;
    :try_start_11b
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 649
    .local v5, "fis":Ljava/io/FileInputStream;
    if-nez v5, :cond_148

    .line 650
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_148

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileInputStream is null -- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_148
    new-instance v8, Ljava/security/DigestInputStream;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$700(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v5, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_153} :catch_199
    .catchall {:try_start_11b .. :try_end_153} :catchall_240

    .line 653
    .end local v7    # "is":Ljava/io/InputStream;
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_29c

    .line 654
    const/16 v17, 0x1000

    :try_start_157
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 655
    .local v3, "buffer":[B
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15e} :catch_2ca
    .catchall {:try_start_157 .. :try_end_15e} :catchall_2c6

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_29c

    .line 664
    if-eqz v8, :cond_11

    .line 666
    :try_start_169
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_16e

    goto/16 :goto_11

    .line 667
    :catch_16e
    move-exception v4

    .line 668
    .local v4, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_11

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed - closing file input stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 660
    .end local v3    # "buffer":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_199
    move-exception v4

    .line 661
    .local v4, "e":Ljava/lang/Exception;
    :goto_19a
    :try_start_19a
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_1c2

    .line 662
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed - generate file digest : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c2
    .catchall {:try_start_19a .. :try_end_1c2} :catchall_240

    .line 664
    :cond_1c2
    if-eqz v7, :cond_1c7

    .line 666
    :try_start_1c4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_271

    .line 675
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_1c7
    :goto_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 677
    :try_start_1d3
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$400()I

    move-result v17

    if-lez v17, :cond_11

    .line 679
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v13, v0

    .line 680
    .local v13, "resCount":D
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$400()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v17, v13, v17

    const-wide/high16 v19, 0x4059000000000000L

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v12, v0

    .line 682
    .local v12, "progress":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$800()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_11

    .line 683
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_21e

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Platform Scan Progress -- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_21e
    # setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I
    invoke-static {v12}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$802(I)I

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->platformScanProgress(I)V
    :try_end_230
    .catch Landroid/os/RemoteException; {:try_start_1d3 .. :try_end_230} :catch_232

    goto/16 :goto_11

    .line 689
    .end local v12    # "progress":I
    .end local v13    # "resCount":D
    :catch_232
    move-exception v4

    .line 690
    .local v4, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 664
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_240
    move-exception v17

    :goto_241
    if-eqz v7, :cond_246

    .line 666
    :try_start_243
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_246} :catch_247

    .line 664
    :cond_246
    :goto_246
    throw v17

    .line 667
    :catch_247
    move-exception v4

    .line 668
    .local v4, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v18

    if-eqz v18, :cond_246

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed - closing file input stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_246

    .line 667
    .local v4, "e":Ljava/lang/Exception;
    :catch_271
    move-exception v4

    .line 668
    .local v4, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_1c7

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed - closing file input stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .end local v7    # "is":Ljava/io/InputStream;
    :goto_293
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c7

    .line 664
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_29c
    if-eqz v8, :cond_1c7

    .line 666
    :try_start_29e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2a1
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2a1} :catch_2a3

    goto/16 :goto_1c7

    .line 667
    :catch_2a3
    move-exception v4

    .line 668
    .restart local v4    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v17

    if-eqz v17, :cond_1c7

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed - closing file input stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_293

    .line 664
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_2c6
    move-exception v17

    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    goto/16 :goto_241

    .line 660
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_2ca
    move-exception v4

    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    goto/16 :goto_19a
.end method

.method public countFiles(Ljava/io/File;)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 564
    if-nez p1, :cond_12

    .line 565
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_11

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "countFiles - invalid input"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_11
    :goto_11
    return-void

    .line 570
    :cond_12
    # ++operator for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$404()I

    .line 572
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 573
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 574
    .local v4, "subFiles":[Ljava/io/File;
    if-eqz v4, :cond_2e

    .line 575
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_24
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 576
    .local v3, "subFile":Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 580
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "subFile":Ljava/io/File;
    :cond_2e
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_11

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "directory is empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public delete3rdPartyBaseLine(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 873
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL delete3rdPartyBaseLine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteFingerPrint(ILjava/lang/String;)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 998
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v3

    if-eqz v3, :cond_23

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISL deleteFingerPrint of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_23
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    const-string v3, "packageName"

    aput-object v3, v1, v7

    .line 1001
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    .line 1002
    .local v2, "sValues":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1003
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "fpDirty"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public deletePlatformBaseLine()Z
    .registers 3

    .prologue
    .line 840
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL deletePlatformBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "system"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deletePreBaseLine()Z
    .registers 3

    .prologue
    .line 812
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL deletePreBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "prebaseLine"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public performPlatformScan()[B
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 697
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_10

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "in performPlatformScan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_10
    # setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {v8}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$402(I)I

    .line 701
    const/4 v5, -0x1

    # setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I
    invoke-static {v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$802(I)I

    .line 704
    :try_start_17
    new-instance v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    invoke-direct {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;-><init>()V

    .line 705
    .local v4, "result":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;
    const/4 v2, 0x0

    .line 707
    .local v2, "fingerprint":[B
    new-instance v5, Ljava/io/File;

    const-string v6, "/system"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    .line 710
    new-instance v5, Ljava/io/File;

    const-string v6, "/system"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    .line 713
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 716
    .local v1, "finalResult":Ljava/security/MessageDigest;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->permissionDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 717
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$600(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 718
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$700(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 720
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_5b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_5b} :catch_5d

    move-result-object v2

    .line 722
    return-object v2

    .line 724
    .end local v1    # "finalResult":Ljava/security/MessageDigest;
    .end local v2    # "fingerprint":[B
    .end local v4    # "result":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;
    :catch_5d
    move-exception v0

    .line 725
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "Algorithm %s does not exist"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "SHA-256"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "msg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_78

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    :cond_78
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public print_fingerprint([BLjava/lang/String;)V
    .registers 9
    .param p1, "fingerprint"    # [B
    .param p2, "fc"    # Ljava/lang/String;

    .prologue
    .line 898
    if-nez p1, :cond_23

    .line 899
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v3

    if-eqz v3, :cond_22

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fingerprint is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_22
    return-void

    .line 901
    :cond_23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    array-length v3, p1

    if-ge v0, v3, :cond_22

    .line 902
    aget-byte v1, p1, v0

    .line 903
    .local v1, "val":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte recieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "vals":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5d

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method public progress(II)V
    .registers 7
    .param p1, "percent"    # I
    .param p2, "opType"    # I

    .prologue
    .line 750
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in ISA progress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 754
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onProgress(II)V

    .line 755
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4a

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA reported progress - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% for operation type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_4a} :catch_4b

    .line 760
    :cond_4a
    :goto_4a
    return-void

    .line 757
    :catch_4b
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public read3rdPartyBaseLine(Ljava/lang/String;)[B
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 866
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL read3rdPartyBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readFingerPrint(ILjava/lang/String;)[B
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 973
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_12

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISL readFingerPrint "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_12
    new-array v1, v8, [Ljava/lang/String;

    const-string v4, "adminUid"

    aput-object v4, v1, v6

    const-string v4, "packageName"

    aput-object v4, v1, v7

    .line 976
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    .line 977
    .local v3, "sValues":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "fpBaseLined"

    aput-object v4, v2, v6

    .line 978
    .local v2, "sReturnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 980
    .local v0, "resultFpB":[B
    iget-object v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v4

    const-string v5, "EnterpriseIslFpTable"

    invoke-virtual {v4, v5, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v0

    .line 983
    const-string v4, "readFingerPrint"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    .line 985
    return-object v0
.end method

.method public readPlatformBaseLine()[B
    .registers 3

    .prologue
    .line 833
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL readPlatformBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "system"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readPreBaseLine()[B
    .registers 3

    .prologue
    .line 806
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL readPreBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "prebaseLine"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public reportError(IILjava/lang/String;I)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "flag"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "opType"    # I

    .prologue
    .line 764
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in reportError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 768
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onError(IILjava/lang/String;I)V

    .line 769
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_40

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA reported error for operation type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_40} :catch_41

    .line 774
    :cond_40
    :goto_40
    return-void

    .line 771
    :catch_41
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public reportSuccess(I)V
    .registers 6
    .param p1, "opType"    # I

    .prologue
    .line 777
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in reportSuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 781
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onSuccess(I)V

    .line 782
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_40

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA reported success for operation type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_40} :catch_41

    .line 787
    :cond_40
    :goto_40
    return-void

    .line 784
    :catch_41
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public rollback()Z
    .registers 3

    .prologue
    .line 885
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL rollback "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->rollbackFingerPrint()Z

    move-result v0

    return v0
.end method

.method public rollbackFingerPrint()Z
    .registers 3

    .prologue
    .line 1024
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL rollbackFingerPrint "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->rollbackFingerPrint()Z

    move-result v0

    return v0
.end method

.method public store3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fingerprint"    # [B

    .prologue
    .line 848
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL store3rdPartyBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_f
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "prebaseLine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 851
    :cond_1f
    const/4 v0, 0x0

    .line 853
    :goto_20
    return v0

    :cond_21
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;[B)Z

    move-result v0

    goto :goto_20
.end method

.method public storePlatformBaseLine([B)Z
    .registers 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 818
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL storePlatformBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "system"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public storePreBaseLine([B)Z
    .registers 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 791
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL storePreBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "prebaseLine"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public update3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fingerprint"    # [B

    .prologue
    .line 860
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL update3rdPartyBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public updateFingerPrint(ILjava/lang/String;[B)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "fingerprint"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 949
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v3

    if-eqz v3, :cond_12

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISL updateFingerPrint "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_12
    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    const-string v3, "packageName"

    aput-object v3, v1, v7

    .line 952
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    .line 953
    .local v2, "sValues":[Ljava/lang/String;
    const-string v3, "updateFingerPrint"

    invoke-virtual {p0, p3, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    .line 954
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 955
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "fpCurrent"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 956
    const-string v3, "fpDirty"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public updatePlatformBaseLine([B)Z
    .registers 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 825
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL updatePlatformBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "system"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public updatePreBaseLine([B)Z
    .registers 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 799
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL updatePreBaseLine "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I

    move-result v0

    const-string v1, "prebaseLine"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method
