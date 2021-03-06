.class public Lcom/android/server/connectivity/MvpVpnClientsManager;
.super Ljava/lang/Object;
.source "MvpVpnClientsManager.java"


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "VpnClients_"

.field private static final PATH:Ljava/lang/String; = "/data/misc/vpn/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/android/server/connectivity/MvpVpnClientsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/misc/vpn/VpnClients_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/MvpVpnClientsManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/MvpVpnClientsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/MvpVpnClientsManager;->removeMvpClientFromList(Ljava/lang/String;)V

    return-void
.end method

.method private clearMvpList()V
    .registers 11

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 141
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_5f

    .line 142
    invoke-direct {p0}, Lcom/android/server/connectivity/MvpVpnClientsManager;->getMvpClientList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "client":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_46

    move-result-wide v5

    .line 146
    .local v5, "token":J
    :try_start_1e
    sget-object v7, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing data for client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v7, Lcom/android/server/connectivity/MvpVpnClientsManager$1;

    invoke-direct {v7, p0}, Lcom/android/server/connectivity/MvpVpnClientsManager$1;-><init>(Lcom/android/server/connectivity/MvpVpnClientsManager;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v0, v1, v7, v8}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_42} :catch_60
    .catchall {:try_start_1e .. :try_end_42} :catchall_7d

    .line 157
    :try_start_42
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_e

    .line 161
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "token":J
    :catch_46
    move-exception v4

    .line 162
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not able to get MVP list to clear it "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_5f
    return-void

    .line 154
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "client":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "token":J
    :catch_60
    move-exception v2

    .line 155
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_61
    sget-object v7, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not able to clear client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_7d

    .line 157
    :try_start_79
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_7d
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_82} :catch_46
.end method

.method private getMvpClientList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v1, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 59
    .local v0, "bReader":Ljava/io/BufferedReader;
    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "mvpPackage":Ljava/lang/String;
    :goto_1d
    if-eqz v2, :cond_2c

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_27

    move-result-object v2

    goto :goto_1d

    .line 65
    .end local v2    # "mvpPackage":Ljava/lang/String;
    :catchall_27
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3

    .restart local v2    # "mvpPackage":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 67
    return-object v1
.end method

.method private isAnMvpClient(Ljava/lang/String;)Z
    .registers 7
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/MvpVpnClientsManager;->getMvpClientList()Ljava/util/ArrayList;

    move-result-object v0

    .line 82
    .local v0, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    .line 86
    .end local v0    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8
    return v2

    .line 83
    :catch_9
    move-exception v1

    .line 84
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to get MVP list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v2, 0x1

    goto :goto_8
.end method

.method private isMvpCleanUpNeeded()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    iget-object v4, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 177
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_8
    const-string v4, "com.vmware.mvp.enabled"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_1b

    if-gt v4, v2, :cond_19

    .line 181
    :goto_18
    return v2

    :cond_19
    move v2, v3

    .line 177
    goto :goto_18

    .line 178
    :catch_1b
    move-exception v0

    .line 179
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    const-string v4, "Cannot find com.vmware.mvp.enabled package, we are probably rooted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private declared-synchronized removeMvpClientFromList(Ljava/lang/String;)V
    .registers 11
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/MvpVpnClientsManager;->getMvpClientList()Ljava/util/ArrayList;

    move-result-object v2

    .line 101
    .local v2, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 102
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 104
    iget-object v6, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_65
    .catchall {:try_start_1 .. :try_end_16} :catchall_7f

    .line 129
    .end local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_16
    monitor-exit p0

    return-void

    .line 106
    .restart local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 107
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x100

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2c} :catch_65
    .catchall {:try_start_18 .. :try_end_2c} :catchall_7f

    .line 110
    .local v0, "bWriter":Ljava/io/BufferedWriter;
    :try_start_2c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "client":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 112
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_47} :catch_48
    .catchall {:try_start_2c .. :try_end_47} :catchall_90

    goto :goto_30

    .line 117
    .end local v1    # "client":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_48
    move-exception v5

    .line 118
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_49
    sget-object v6, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to re-write into MVP File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_90

    .line 120
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_7f

    goto :goto_16

    .line 126
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_65
    move-exception v5

    .line 127
    .restart local v5    # "ioe":Ljava/io/IOException;
    :try_start_66
    sget-object v6, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to re-create or write into MVP File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_7f

    goto :goto_16

    .line 100
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_7f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 114
    .restart local v0    # "bWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_82
    :try_start_82
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 116
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8c} :catch_48
    .catchall {:try_start_82 .. :try_end_8c} :catchall_90

    .line 120
    :try_start_8c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_16

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_90
    move-exception v6

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v6

    .line 124
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_95
    sget-object v6, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called to remove client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that is no more in the list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_b3} :catch_65
    .catchall {:try_start_8c .. :try_end_b3} :catchall_7f

    goto/16 :goto_16
.end method


# virtual methods
.method public addMvpClientToList(Ljava/lang/String;)V
    .registers 8
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v3, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/MvpVpnClientsManager;->isAnMvpClient(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 195
    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 196
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_5e

    .line 198
    .local v0, "bWriter":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    :try_start_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 199
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 200
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 202
    sget-object v3, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set as MVP client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_59

    .line 206
    :try_start_55
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 212
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_58
    :goto_58
    return-void

    .line 206
    .restart local v0    # "bWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_59
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v3
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_5e

    .line 208
    .end local v0    # "bWriter":Ljava/io/BufferedWriter;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_5e
    move-exception v2

    .line 209
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not able to create or write into MVP File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method public isClientAllowedForHost(Ljava/lang/String;)Z
    .registers 4
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 223
    iget-object v1, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 227
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/MvpVpnClientsManager;->isAnMvpClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVpnFilteringActive()Z
    .registers 3

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/server/connectivity/MvpVpnClientsManager;->isMvpCleanUpNeeded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 238
    sget-object v0, Lcom/android/server/connectivity/MvpVpnClientsManager;->TAG:Ljava/lang/String;

    const-string v1, "Clearing client list for MVP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/android/server/connectivity/MvpVpnClientsManager;->clearMvpList()V

    .line 242
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/MvpVpnClientsManager;->mListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
