.class public Lcom/android/server/usb/UsbDebuggingManager;
.super Ljava/lang/Object;
.source "UsbDebuggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDebuggingManager"


# instance fields
.field private final ADBD_SOCKET:Ljava/lang/String;

.field private final ADB_DIRECTORY:Ljava/lang/String;

.field private final ADB_KEYS_FILE:Ljava/lang/String;

.field private final BUFFER_SIZE:I

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private mAdbEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mFingerprints:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "adbd"

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADBD_SOCKET:Ljava/lang/String;

    .line 55
    const-string v0, "misc/adb"

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADB_DIRECTORY:Ljava/lang/String;

    .line 56
    const-string v0, "adb_keys"

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADB_KEYS_FILE:Ljava/lang/String;

    .line 57
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->BUFFER_SIZE:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    .line 64
    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    .line 65
    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    .line 69
    new-instance v0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;-><init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDebuggingManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/usb/UsbDebuggingManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbDebuggingManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->deleteKeyFile()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDebuggingManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->closeSocket()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbDebuggingManager;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbDebuggingManager;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->writeKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private closeSocket()V
    .registers 6

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_9

    .line 128
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_13

    .line 133
    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_12

    .line 135
    :try_start_d
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2d

    .line 140
    :cond_12
    :goto_12
    return-void

    .line 129
    :catch_13
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2d
    move-exception v1

    .line 137
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private deleteKeyFile()V
    .registers 2

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 318
    .local v0, "keyFile":Ljava/io/File;
    if-eqz v0, :cond_9

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 321
    :cond_9
    return-void
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 237
    const-string v4, "0123456789ABCDEF"

    .line 238
    .local v4, "hex":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_8
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_4b

    move-result-object v2

    .line 248
    .local v2, "digester":Ljava/security/MessageDigest;
    const-string v7, "\\s+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 249
    .local v0, "base64_data":[B
    invoke-static {v0, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 251
    .local v1, "digest":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_23
    array-length v7, v1

    if-ge v5, v7, :cond_67

    .line 252
    aget-byte v7, v1, v5

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    aget-byte v7, v1, v5

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_48

    .line 255
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 243
    .end local v0    # "base64_data":[B
    .end local v1    # "digest":[B
    .end local v2    # "digester":Ljava/security/MessageDigest;
    .end local v5    # "i":I
    :catch_4b
    move-exception v3

    .line 244
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "UsbDebuggingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting digester: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v7, ""

    .line 257
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_66
    return-object v7

    .restart local v0    # "base64_data":[B
    .restart local v1    # "digest":[B
    .restart local v2    # "digester":Ljava/security/MessageDigest;
    .restart local v5    # "i":I
    :cond_67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_66
.end method

.method private getUserKeyFile()Ljava/io/File;
    .registers 5

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 281
    .local v1, "dataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "misc/adb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v0, "adbDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 284
    const-string v2, "UsbDebuggingManager"

    const-string v3, "ADB data directory does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v2, 0x0

    .line 288
    :goto_19
    return-object v2

    :cond_1a
    new-instance v2, Ljava/io/File;

    const-string v3, "adb_keys"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_19
.end method

.method private listenToSocket()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v7, 0x1000

    :try_start_2
    new-array v1, v7, [B

    .line 76
    .local v1, "buffer":[B
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v7, "adbd"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 78
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v4, 0x0

    .line 80
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    .line 81
    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 83
    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    .line 84
    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 87
    :goto_28
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 88
    .local v2, "count":I
    if-gez v2, :cond_50

    .line 89
    const-string v7, "UsbDebuggingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reading"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4c} :catch_8f
    .catchall {:try_start_2 .. :try_end_4c} :catchall_98

    .line 109
    :goto_4c
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->closeSocket()V

    .line 111
    return-void

    .line 93
    :cond_50
    const/4 v7, 0x0

    :try_start_51
    aget-byte v7, v1, v7

    const/16 v8, 0x50

    if-ne v7, v8, :cond_9d

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    const/16 v8, 0x4b

    if-ne v7, v8, :cond_9d

    .line 94
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v1, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    .line 95
    .local v5, "key":Ljava/lang/String;
    const-string v7, "UsbDebuggingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received public key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 97
    .local v6, "msg":Landroid/os/Message;
    iput-object v5, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_8e} :catch_8f
    .catchall {:try_start_51 .. :try_end_8e} :catchall_98

    goto :goto_28

    .line 105
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    :catch_8f
    move-exception v3

    .line 106
    .local v3, "ex":Ljava/io/IOException;
    :try_start_90
    const-string v7, "UsbDebuggingManager"

    const-string v8, "Communication error: "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    throw v3
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_98

    .line 109
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_98
    move-exception v7

    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->closeSocket()V

    throw v7

    .line 101
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_9d
    :try_start_9d
    const-string v7, "UsbDebuggingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v1, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_c0} :catch_8f
    .catchall {:try_start_9d .. :try_end_c0} :catchall_98

    goto :goto_4c
.end method

.method private sendResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_d

    .line 145
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    .line 151
    :cond_d
    :goto_d
    return-void

    .line 147
    :catch_e
    move-exception v0

    .line 148
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "UsbDebuggingManager"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fingerprints"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDebuggingManager;->isLockScreenMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 277
    :goto_6
    return-void

    .line 265
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.UsbDebuggingActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v2, "fingerprints"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    :try_start_22
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_6

    .line 274
    :catch_28
    move-exception v1

    .line 275
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "UsbDebuggingManager"

    const-string/jumbo v3, "unable to start UsbDebuggingActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private writeKey(Ljava/lang/String;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 293
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v2

    .line 295
    .local v2, "keyFile":Ljava/io/File;
    if-nez v2, :cond_7

    .line 314
    .end local v2    # "keyFile":Ljava/io/File;
    :goto_6
    return-void

    .line 299
    .restart local v2    # "keyFile":Ljava/io/File;
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 306
    :cond_1b
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 307
    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 308
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 309
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_6

    .line 311
    .end local v1    # "fo":Ljava/io/FileOutputStream;
    .end local v2    # "keyFile":Ljava/io/File;
    :catch_31
    move-exception v0

    .line 312
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "UsbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 6
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_14

    const/4 v1, 0x1

    :goto_a
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 331
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void

    .line 330
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public clearUsbDebuggingKeys()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    return-void
.end method

.method public denyUsbDebugging()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x0

    .line 344
    const-string v2, "  USB Debugging State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Connected to adbd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Last key received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    const-string v1, "    User keys:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :try_start_3e
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/adb/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4e} :catch_64

    .line 353
    :goto_4e
    const-string v1, "    System keys:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    :try_start_53
    new-instance v1, Ljava/io/File;

    const-string v2, "/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_7c

    .line 359
    :goto_63
    return-void

    .line 350
    :catch_64
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e

    .line 356
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7c
    move-exception v0

    .line 357
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63
.end method

.method public isLockScreenMode()Z
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->keyguardManager:Landroid/app/KeyguardManager;

    .line 362
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 115
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    if-eqz v1, :cond_f

    .line 117
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->listenToSocket()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    .line 118
    :catch_8
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    return-void
.end method

.method public setAdbEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    return-void

    .line 324
    :cond_9
    const/4 v0, 0x2

    goto :goto_5
.end method
