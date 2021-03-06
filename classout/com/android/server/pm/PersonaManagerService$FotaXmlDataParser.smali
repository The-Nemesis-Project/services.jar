.class public Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FotaXmlDataParser"
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SYSTEM:Ljava/lang/String; = "system"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "FotaXmlDataParser"


# instance fields
.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    .line 2548
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 2549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    .line 2550
    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromXml()V
    .registers 11

    .prologue
    .line 2558
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 2559
    .local v1, "event":I
    const/4 v3, 0x0

    .line 2561
    .local v3, "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    :goto_7
    const/4 v7, 0x1

    if-eq v1, v7, :cond_8e

    .line 2562
    packed-switch v1, :pswitch_data_90

    .line 2588
    :cond_d
    :goto_d
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_7

    .line 2564
    :pswitch_14
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2565
    .local v5, "tag":Ljava/lang/String;
    const-string v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2566
    const-string v7, "PersonaManagerService"

    const-string v8, "New row found "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2568
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string/jumbo v9, "system"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2569
    .local v6, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2570
    .local v4, "system":Z
    if-eqz v6, :cond_49

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 2571
    const/4 v4, 0x1

    .line 2574
    :cond_49
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    .end local v3    # "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {v3, v7, v2, v4}, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;-><init>(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Z)V

    .restart local v3    # "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    goto :goto_d

    .line 2579
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "system":Z
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_51
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2580
    .restart local v5    # "tag":Ljava/lang/String;
    const-string v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v3, :cond_d

    .line 2581
    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->dumpState()V

    .line 2582
    const-string v7, "PersonaManagerService"

    const-string v8, "ROW added to list"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_d

    .line 2590
    .end local v1    # "event":I
    .end local v3    # "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    .end local v5    # "tag":Ljava/lang/String;
    :catch_71
    move-exception v0

    .line 2591
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFromXml EX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8e
    return-void

    .line 2562
    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_14
        :pswitch_51
    .end packed-switch
.end method
