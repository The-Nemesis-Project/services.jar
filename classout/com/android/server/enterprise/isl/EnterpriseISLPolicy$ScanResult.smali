.class final Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;
.super Ljava/lang/Object;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScanResult"
.end annotation


# instance fields
.field private contentDigest:Ljava/security/MessageDigest;

.field private fileAttributeDigest:Ljava/security/MessageDigest;

.field fileCount:I

.field private fileNameDigest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1774
    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;

    .line 1777
    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;

    .line 1783
    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;

    .line 1789
    :try_start_a
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;

    .line 1791
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;

    .line 1795
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_22} :catch_23

    .line 1803
    return-void

    .line 1797
    :catch_23
    move-exception v0

    .line 1798
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Algorithm %s does not exist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "SHA-256"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1800
    .local v1, "msg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    :cond_3f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;

    return-object v0
.end method
