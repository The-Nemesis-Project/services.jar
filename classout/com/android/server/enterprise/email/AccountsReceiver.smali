.class public Lcom/android/server/enterprise/email/AccountsReceiver;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
    }
.end annotation


# static fields
.field private static final DELETE_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

.field private static final SETUP_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

.field private static TAG:Ljava/lang/String;

.field private static mSmimeCerticateList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/email/AccountSMIMECertificate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-string v0, "AccountsReceiver"

    sput-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/AccountsReceiver$1;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 69
    const/4 v7, 0x0

    .line 71
    .local v7, "filter":Landroid/content/IntentFilter;
    :try_start_d
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_72

    .line 72
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .local v3, "filter":Landroid/content/IntentFilter;
    :try_start_12
    const-string v0, "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v0, "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1d
    const/4 v0, 0x1

    if-gt v8, v0, :cond_67

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sec_container_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sec_container_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 78
    :cond_67
    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_71} :catch_90

    .line 85
    .end local v8    # "i":I
    :goto_71
    return-void

    .line 80
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    :catch_72
    move-exception v6

    move-object v3, v7

    .line 81
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .local v6, "e":Ljava/lang/Exception;
    :goto_74
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handled exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_71

    .line 80
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_90
    move-exception v6

    goto :goto_74
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/AccountsReceiver;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 203
    .local v2, "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-object v2, v0

    .line 204
    sget-object v3, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 209
    :goto_10
    return-object v2

    .line 205
    :catch_11
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string v4, "getSMIMECertificate() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z
    .registers 5
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "mCert"    # Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .prologue
    .line 190
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_e

    .line 195
    sget-object v1, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string v2, "pushSMIMECertificate() success"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 191
    :catch_e
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string v2, "pushSMIMECertificate() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, 0x0

    goto :goto_d
.end method
