.class Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$CheckMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMpHostnameVerifier"
.end annotation


# instance fields
.field mOrgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "orgUri"    # Landroid/net/Uri;

    .prologue
    .line 6590
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6591
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;->mOrgUri:Landroid/net/Uri;

    .line 6592
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 8
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 6596
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 6597
    .local v0, "hv":Ljavax/net/ssl/HostnameVerifier;
    iget-object v3, p0, Lcom/android/server/ConnectivityService$CheckMp$CheckMpHostnameVerifier;->mOrgUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 6598
    .local v1, "orgUriHost":Ljava/lang/String;
    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_16
    const/4 v2, 0x1

    .line 6600
    .local v2, "retVal":Z
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobileOk: hostnameVerify retVal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hostname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " orgUriHost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService$CheckMp;->access$5200(Ljava/lang/String;)V

    .line 6603
    return v2

    .line 6598
    .end local v2    # "retVal":Z
    :cond_42
    const/4 v2, 0x0

    goto :goto_17
.end method
