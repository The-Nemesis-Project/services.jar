.class Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolkitTabItem"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTaskRecordId:I

.field private mbPermanent:Z

.field private mbRunApplication:Z

.field final synthetic this$0:Lcom/android/server/am/ToolkitManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fullName"    # Ljava/lang/String;
    .param p4, "taskRecordId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1249
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1225
    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1231
    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    .line 1251
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "tmp":[Ljava/lang/String;
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    .line 1253
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    .line 1254
    iput p4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1255
    iput-boolean v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1256
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V
    .registers 6
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1233
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1225
    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1231
    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    .line 1234
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    .line 1235
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1236
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1f

    .line 1237
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    .line 1239
    :cond_1f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1264
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1225
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1231
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    .line 1265
    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    .line 1266
    iput-object p3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    .line 1267
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "taskId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1269
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1225
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1231
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    .line 1270
    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    .line 1271
    iput-object p3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    .line 1272
    iput p4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1274
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "bRunApplication"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1258
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1225
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1231
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    .line 1259
    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    .line 1260
    iput-object p3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    .line 1261
    iput-boolean p4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1262
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .prologue
    .line 1215
    iget v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    return v0
.end method

.method private setDefaultInfo()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1400
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_11

    .line 1401
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # getter for: Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/ToolkitManagerService;->access$1700(Lcom/android/server/am/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    .line 1405
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1408
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string v3, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 1411
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    :cond_2e
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1415
    if-eqz v2, :cond_63

    .line 1416
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1417
    .local v1, "resolveInfoCount":I
    if-eqz v1, :cond_63

    .line 1418
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_4c

    .line 1419
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    .line 1421
    :cond_4c
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5e

    .line 1422
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1424
    :cond_5e
    const-string v3, "android.intent.category.MULTIWINDOW_TOOLKIT"

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    .line 1446
    .end local v1    # "resolveInfoCount":I
    :cond_62
    :goto_62
    return-void

    .line 1430
    :cond_63
    const-string v3, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 1431
    const-string v3, "android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1433
    if-eqz v2, :cond_62

    .line 1434
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1435
    .restart local v1    # "resolveInfoCount":I
    if-eqz v1, :cond_62

    .line 1436
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_8b

    .line 1437
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    .line 1439
    :cond_8b
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_9d

    .line 1440
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1442
    :cond_9d
    const-string v3, "android.intent.category.MULTIWINDOW_LAUNCHER"

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    goto :goto_62
.end method


# virtual methods
.method public destroyApplication()V
    .registers 2

    .prologue
    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1396
    return-void
.end method

.method public equalPackage(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1337
    if-nez p1, :cond_5

    .line 1349
    :cond_4
    :goto_4
    return v1

    .line 1339
    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v2

    .line 1340
    goto :goto_4

    .line 1342
    :cond_9
    instance-of v3, p1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 1343
    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 1345
    .local v0, "arg":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 1346
    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1316
    if-nez p1, :cond_5

    .line 1333
    :cond_4
    :goto_4
    return v1

    .line 1318
    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v2

    .line 1319
    goto :goto_4

    .line 1321
    :cond_9
    instance-of v3, p1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 1322
    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 1324
    .local v0, "arg":Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1325
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-ne v1, v3, :cond_26

    move v1, v2

    .line 1326
    goto :goto_4

    .line 1327
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move v1, v2

    .line 1328
    goto :goto_4

    :cond_36
    move v1, v2

    .line 1330
    goto :goto_4
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1303
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1304
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-ne v1, p2, :cond_12

    .line 1311
    :cond_11
    :goto_11
    return v0

    .line 1306
    :cond_12
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_11

    .line 1311
    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 1378
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setDefaultInfo()V

    .line 1380
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskRecordId()I
    .registers 2

    .prologue
    .line 1246
    iget v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    return v0
.end method

.method isPermanent()Z
    .registers 2

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    return v0
.end method

.method public makeIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 1353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1356
    :cond_14
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setDefaultInfo()V

    .line 1359
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1362
    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v2, 0x2002010

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    return-object v0
.end method

.method public requestFocus()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1289
    iget-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    if-nez v1, :cond_14

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1291
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # getter for: Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/ToolkitManagerService;->access$1700(Lcom/android/server/am/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1292
    iput-boolean v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    .line 1295
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # getter for: Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-static {v1}, Lcom/android/server/am/ToolkitManagerService;->access$300(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-result-object v1

    if-eq v1, p0, :cond_27

    .line 1296
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    # setter for: Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-static {v1, p0}, Lcom/android/server/am/ToolkitManagerService;->access$302(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    .line 1297
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v2, 0x2

    # invokes: Lcom/android/server/am/ToolkitManagerService;->notifyTabItemChange(Ljava/lang/Object;I)V
    invoke-static {v1, p0, v2}, Lcom/android/server/am/ToolkitManagerService;->access$1500(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/Object;I)V

    .line 1299
    :cond_27
    return v3
.end method

.method setPermanent(Z)V
    .registers 2
    .param p1, "bPermanent"    # Z

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    .line 1278
    return-void
.end method

.method public setTaskRecordId(I)V
    .registers 2
    .param p1, "taskRecordId"    # I

    .prologue
    .line 1242
    iput p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    .line 1243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1385
    const/4 v0, 0x0

    .line 1391
    :goto_5
    return-object v0

    .line 1387
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1388
    .local v0, "rt":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    goto :goto_5
.end method
