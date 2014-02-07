.class Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcppDbErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V
    .registers 2

    .prologue
    .line 984
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;->this$0:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 985
    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 989
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v0, "EcppStorageProvider"

    const-string v1, "######### !! ECPP DATABASE CORRUPTION OCCURED !! #########"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    return-void
.end method
