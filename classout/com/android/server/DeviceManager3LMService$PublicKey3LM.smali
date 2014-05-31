.class public Lcom/android/server/DeviceManager3LMService$PublicKey3LM;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PublicKey3LM"
.end annotation


# instance fields
.field private final m3LMPublicKey:[B

.field private final mAFPublicKey:[B

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 1982
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1983
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    .line 1984
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1987
    .local v4, "resources":Landroid/content/res/Resources;
    const-string v5, "1"

    const-string v6, "ro.3lm.production"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1988
    const v5, 0x1040b10

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "cert":Ljava/lang/String;
    const v5, 0x1040037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1994
    .local v1, "certAF":Ljava/lang/String;
    :goto_28
    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v2

    .line 1995
    .local v2, "key":Ljava/security/PublicKey;
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->m3LMPublicKey:[B

    .line 1996
    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    .line 1997
    .local v3, "keyAF":Ljava/security/PublicKey;
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;->mAFPublicKey:[B

    .line 1998
    return-void

    .line 1991
    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "certAF":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "keyAF":Ljava/security/PublicKey;
    :cond_45
    const v5, 0x1040b11

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1992
    .restart local v0    # "cert":Ljava/lang/String;
    const v5, 0x1040038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "certAF":Ljava/lang/String;
    goto :goto_28
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .registers 3
    .param p1, "blob"    # [B

    .prologue
    .line 2002
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public comparePublicKey([BZ)Z
    .registers 4
    .param p1, "blob"    # [B
    .param p2, "onlyAF"    # Z

    .prologue
    .line 2021
    const/4 v0, 0x0

    return v0
.end method
