.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$TextServicesSettings;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 87
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, "userId":I
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/TextServicesManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/TextServicesManagerService$1;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 109
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_35} :catch_51

    .line 113
    :goto_35
    new-instance v2, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    invoke-direct {v2, p0, v4}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 114
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 115
    new-instance v2, Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;-><init>(Landroid/content/ContentResolver;I)V

    iput-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .line 118
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->switchUserLocked(I)V

    .line 119
    return-void

    .line 110
    :catch_51
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method static synthetic access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TextServicesManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    return-void
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 249
    if-eqz p1, :cond_4

    if-nez p2, :cond_28

    .line 250
    :cond_4
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_27
    return v0

    :cond_28
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_27
.end method

.method private static buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Lcom/android/server/TextServicesManagerService$TextServicesSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 179
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 181
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.textservice.SpellCheckerService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x80

    invoke-virtual {p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 184
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 185
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v0, :cond_cd

    .line 186
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 187
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 188
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v1, "compName":Landroid/content/ComponentName;
    const-string v9, "android.permission.BIND_TEXT_SERVICE"

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    .line 190
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping text service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.BIND_TEXT_SERVICE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 197
    :cond_64
    :try_start_64
    new-instance v6, Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v6, p0, v5}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 198
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v9

    if-gtz v9, :cond_a8

    .line 199
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping text service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": it does not contain subtypes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_8d} :catch_8e
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_8d} :catch_b3

    goto :goto_61

    .line 205
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_8e
    move-exception v2

    .line 206
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load the spell checker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 203
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_a8
    :try_start_a8
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_b2} :catch_8e
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b2} :catch_b3

    goto :goto_61

    .line 207
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_b3
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load the spell checker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 214
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    :cond_cd
    return-void
.end method

.method private calledFromValidUser()Z
    .registers 6

    .prologue
    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 222
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 239
    .local v1, "userId":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_14

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 240
    :cond_14
    const/4 v2, 0x1

    .line 243
    :goto_15
    return v2

    .line 242
    :cond_16
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/TextServicesManagerService;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 8
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "prefPackage"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 267
    .local v2, "spellCheckersCount":I
    if-nez v2, :cond_11

    .line 268
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    .line 285
    :cond_10
    :goto_10
    return-object v1

    .line 271
    :cond_11
    if-eqz p2, :cond_2b

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v2, :cond_2b

    .line 273
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 274
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 282
    .end local v0    # "i":I
    .end local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2b
    const/4 v3, 0x1

    if-le v2, v3, :cond_35

    .line 283
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "more than one spell checker service found, picking first"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_35
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    move-object v1, v3

    goto :goto_10
.end method

.method private static getStackTrace()Ljava/lang/String;
    .registers 6

    .prologue
    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 973
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_b

    .line 974
    :catch_b
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 977
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_11
    array-length v4, v1

    if-ge v2, v4, :cond_33

    .line 978
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 981
    :cond_33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isSpellCheckerEnabledLocked()Z
    .registers 5

    .prologue
    .line 634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 636
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isSpellCheckerEnabled()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 642
    .local v2, "retval":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    return v2

    .line 642
    .end local v2    # "retval":Z
    :catchall_e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 599
    :cond_e
    :goto_e
    return-void

    .line 587
    :cond_f
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 588
    .local v0, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 592
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 594
    .local v1, "ident":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellChecker(Ljava/lang/String;)V

    .line 595
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    .line 597
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_31
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setCurrentSpellCheckerSubtypeLocked(I)V
    .registers 8
    .param p1, "hashCode"    # I

    .prologue
    .line 605
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 606
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v4, 0x0

    .line 607
    .local v4, "tempHashCode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v5

    if-ge v0, v5, :cond_1a

    .line 608
    invoke-virtual {v3, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_27

    .line 609
    move v4, p1

    .line 613
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 615
    .local v1, "ident":J
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellCheckerSubtype(I)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2a

    .line 617
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    return-void

    .line 607
    .end local v1    # "ident":J
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 617
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private setSpellCheckerEnabledLocked(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 627
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setSpellCheckerEnabled(Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 629
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    return-void

    .line 629
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .registers 18
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "uid"    # I
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 477
    .local v9, "sciId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v9, p2, v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 479
    .local v3, "connection":Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.service.textservice.SpellCheckerService"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v10, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 484
    const/4 v2, 0x1

    invoke-direct {p0, v10, v3, v2}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 485
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_27
    return-void

    .line 488
    :cond_28
    new-instance v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V

    .line 490
    .local v1, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27
.end method

.method private switchUserLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentUserId(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked()V

    .line 124
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 125
    invoke-virtual {p0, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 126
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v0, :cond_27

    .line 127
    invoke-direct {p0, v5, v5}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_27

    .line 132
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 135
    :cond_27
    return-void
.end method

.method private unbindServiceLocked()V
    .registers 4

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 259
    .local v1, "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    goto :goto_a

    .line 261
    .end local v1    # "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :cond_1a
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 262
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 648
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_33

    .line 651
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump TextServicesManagerService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    :goto_32
    return-void

    .line 657
    :cond_33
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 658
    :try_start_36
    const-string v10, "Current Text Services Manager state:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string v10, "  Spell Checker Map:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 661
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textservice/SpellCheckerInfo;

    .line 663
    .local v7, "info":Landroid/view/textservice/SpellCheckerInfo;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "id="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "comp="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    .line 667
    .local v1, "NS":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9a
    if-ge v5, v1, :cond_4a

    .line 668
    invoke-virtual {v7, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    .line 669
    .local v9, "st":Landroid/view/textservice/SpellCheckerSubtype;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Subtype #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "locale="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "extraValue="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    .line 675
    .end local v1    # "NS":I
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v5    # "i":I
    .end local v7    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v9    # "st":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_d7
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    const-string v10, "  Spell Checker Bind Groups:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_eb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 679
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 680
    .local v4, "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mInternalConnection="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 683
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$900(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 684
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mSpellChecker="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    iget-object v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 686
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mBound="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Z)V

    .line 687
    const-string v10, " mConnected="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 688
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$1000(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 689
    .local v0, "NL":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_15a
    if-ge v5, v0, :cond_eb

    .line 690
    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$1000(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 691
    .local v8, "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Listener #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mTsListener="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 694
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mScListener="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 696
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mGroup="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 697
    # getter for: Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {v8}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->access$1100(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 698
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mScLocale="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    const-string v10, " mUid="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 689
    add-int/lit8 v5, v5, 0x1

    goto :goto_15a

    .line 703
    .end local v0    # "NL":I
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v5    # "i":I
    .end local v8    # "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_1c3
    monitor-exit v11

    goto/16 :goto_32

    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_1c6
    move-exception v10

    monitor-exit v11
    :try_end_1c8
    .catchall {:try_start_36 .. :try_end_1c8} :catchall_1c6

    throw v10
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_7

    .line 529
    :goto_6
    return-void

    .line 516
    :cond_7
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 517
    :try_start_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 520
    .local v0, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_19

    .line 522
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 528
    .end local v0    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :catchall_2b
    move-exception v5

    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw v5

    .line 524
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 525
    .local v4, "removeSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v4, :cond_41

    .line 526
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 528
    :cond_41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_2b

    goto :goto_6
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_8

    .line 304
    :goto_7
    return-object v1

    .line 296
    :cond_8
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 297
    :try_start_b
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellChecker()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "curSpellCheckerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 302
    monitor-exit v2

    goto :goto_7

    .line 305
    .end local v0    # "curSpellCheckerId":Ljava/lang/String;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v1

    .line 304
    .restart local v0    # "curSpellCheckerId":Ljava/lang/String;
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_19

    goto :goto_7
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 17
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v11

    if-nez v11, :cond_8

    .line 315
    const/4 v8, 0x0

    .line 385
    :goto_7
    return-object v8

    .line 317
    :cond_8
    iget-object v12, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 318
    :try_start_b
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v11}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellCheckerSubtype()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "subtypeHashCodeStr":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v7

    .line 323
    .local v7, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v11

    if-nez v11, :cond_24

    .line 327
    :cond_1e
    const/4 v8, 0x0

    monitor-exit v12

    goto :goto_7

    .line 386
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v10    # "subtypeHashCodeStr":Ljava/lang/String;
    :catchall_21
    move-exception v11

    monitor-exit v12
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v11

    .line 330
    .restart local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v10    # "subtypeHashCodeStr":Ljava/lang/String;
    :cond_24
    :try_start_24
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_39

    .line 331
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 335
    .local v3, "hashCode":I
    :goto_32
    if-nez v3, :cond_3b

    if-nez p2, :cond_3b

    .line 336
    const/4 v8, 0x0

    monitor-exit v12

    goto :goto_7

    .line 333
    .end local v3    # "hashCode":I
    :cond_39
    const/4 v3, 0x0

    .restart local v3    # "hashCode":I
    goto :goto_32

    .line 338
    :cond_3b
    const/4 v1, 0x0

    .line 339
    .local v1, "candidateLocale":Ljava/lang/String;
    if-nez v3, :cond_6d

    .line 341
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v13, "input_method"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 343
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_5b

    .line 344
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 346
    .local v2, "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_5b

    .line 347
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "localeString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5b

    .line 350
    move-object v1, v6

    .line 354
    .end local v2    # "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "localeString":Ljava/lang/String;
    :cond_5b
    if-nez v1, :cond_6d

    .line 356
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6d
    const/4 v0, 0x0

    .line 360
    .local v0, "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6f
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v11

    if-ge v4, v11, :cond_aa

    .line 361
    invoke-virtual {v7, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    .line 362
    .local v8, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v3, :cond_a1

    .line 363
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, "scsLocale":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_87

    .line 365
    monitor-exit v12

    goto :goto_7

    .line 366
    :cond_87
    if-nez v0, :cond_9e

    .line 367
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x2

    if-lt v11, v13, :cond_9e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x2

    if-lt v11, v13, :cond_9e

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 370
    move-object v0, v8

    .line 360
    .end local v9    # "scsLocale":Ljava/lang/String;
    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 373
    :cond_a1
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v11

    if-ne v11, v3, :cond_9e

    .line 379
    monitor-exit v12

    goto/16 :goto_7

    .line 385
    .end local v8    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_aa
    monitor-exit v12
    :try_end_ab
    .catchall {:try_start_24 .. :try_end_ab} :catchall_21

    move-object v8, v0

    goto/16 :goto_7
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 497
    const/4 v0, 0x0

    .line 505
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textservice/SpellCheckerInfo;

    goto :goto_7
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .registers 27
    .param p1, "sciId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_7

    .line 457
    :cond_6
    :goto_6
    return-void

    .line 396
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-eqz v2, :cond_6

    .line 399
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz p3, :cond_17

    if-nez p4, :cond_1f

    .line 400
    :cond_17
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getSpellCheckerService: Invalid input."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 403
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 404
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 405
    monitor-exit v20

    goto :goto_6

    .line 456
    :catchall_34
    move-exception v2

    monitor-exit v20
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v2

    .line 407
    :cond_37
    :try_start_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textservice/SpellCheckerInfo;

    .line 408
    .local v8, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 409
    .local v6, "uid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 411
    .local v14, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v14, :cond_91

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    move-result-object v18

    .line 415
    .local v18, "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    if-nez v18, :cond_7d

    .line 419
    monitor-exit v20

    goto :goto_6

    .line 421
    :cond_7d
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    if-nez v2, :cond_a9

    const/4 v2, 0x1

    :goto_82
    iget-boolean v3, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    and-int/2addr v2, v3

    if-eqz v2, :cond_ab

    .line 422
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "The state of the spell checker bind group is illegal."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    .line 449
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_91
    :goto_91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_94
    .catchall {:try_start_37 .. :try_end_94} :catchall_34

    move-result-wide v16

    .local v16, "ident":J
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move v12, v6

    move-object/from16 v13, p5

    .line 451
    :try_start_a0
    invoke-direct/range {v7 .. v13}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_ec

    .line 454
    :try_start_a3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    monitor-exit v20

    goto/16 :goto_6

    .line 421
    .end local v16    # "ident":J
    .restart local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .restart local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_a9
    const/4 v2, 0x0

    goto :goto_82

    .line 424
    :cond_ab
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_34

    if-eqz v2, :cond_91

    .line 430
    :try_start_af
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-object/from16 v0, p5

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    move-result-object v19

    .line 433
    .local v19, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    if-eqz v19, :cond_cb

    .line 434
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_c8} :catch_cf
    .catchall {:try_start_af .. :try_end_c8} :catchall_34

    .line 435
    :try_start_c8
    monitor-exit v20
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_34

    goto/16 :goto_6

    .line 440
    :cond_cb
    :try_start_cb
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_ce} :catch_cf
    .catchall {:try_start_cb .. :try_end_ce} :catchall_34

    goto :goto_91

    .line 442
    .end local v19    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_cf
    move-exception v15

    .line 443
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_d0
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getting spell checker session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    goto :goto_91

    .line 454
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v16    # "ident":J
    :catchall_ec
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_f1
    .catchall {:try_start_d0 .. :try_end_f1} :catchall_34
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 463
    const/4 v0, 0x0

    .line 466
    :goto_7
    return v0

    .line 465
    :cond_8
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 466
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->isSpellCheckerEnabledLocked()Z

    move-result v0

    monitor-exit v1

    goto :goto_7

    .line 467
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sciId"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 546
    :goto_6
    return-void

    .line 536
    :cond_7
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 537
    :try_start_a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 540
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0

    .line 544
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 545
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    goto :goto_6
.end method

.method public setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 563
    :goto_6
    return-void

    .line 553
    :cond_7
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 554
    :try_start_a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 557
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0

    .line 561
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V

    .line 562
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    goto :goto_6
.end method

.method public setSpellCheckerEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 580
    :goto_6
    return-void

    .line 570
    :cond_7
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 571
    :try_start_a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 574
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0

    .line 578
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setSpellCheckerEnabledLocked(Z)V

    .line 579
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    goto :goto_6
.end method

.method public systemRunning()V
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 83
    :cond_7
    return-void
.end method
