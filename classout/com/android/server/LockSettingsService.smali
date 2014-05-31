.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$DatabaseHelper;,
        Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCK_BACKUPPIN_FILE:Ljava/lang/String; = "sparepassword.key"

.field private static final LOCK_FINGERPRINT_PASSWORD_FILE:Ljava/lang/String; = "fingerprintpassword.key"

.field private static final LOCK_PARENT_CONTROL_PASSWORD_FILE:Ljava/lang/String; = "parentcontrol.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_SIGNATURE_BACKUPPIN_FILE:Ljava/lang/String; = "signaturebackuppin.key"

.field private static final LOCK_SIGNATURE_FILE:Ljava/lang/String; = "signature.key"

.field private static final LOCK_SKTPASSWORD_FILE:Ljava/lang/String; = "sktpassword.key"

.field private static ORIGINAL_PASSWORD_HASH_SIZE:I = 0x0

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SIGNATURE_SETTINGS_ADDED_INDEX:I = 0x9

.field private static final SIGNATURE_SETTINGS_CURRENT:I = 0x16

.field private static final SIGNATURE_SETTINGS_OLD:I = 0x15

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static maxRetry:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 241
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 242
    const/16 v0, 0x14

    sput v0, Lcom/android/server/LockSettingsService;->maxRetry:I

    .line 243
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    sget v1, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->setMaxRetryCount(I)Z

    .line 244
    const-string v0, "MDPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_39
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen.signatureregistered"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 894
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 906
    const/16 v0, 0x48

    sput v0, Lcom/android/server/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 252
    new-instance v0, Lcom/android/server/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    .line 254
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 9
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 329
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5b

    .line 330
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 331
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_58

    .line 333
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 338
    .end local v2    # "key":Ljava/lang/String;
    :cond_5b
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private getLockBackupPinFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sparepassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sparepassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_31

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fingerprintpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    :goto_30
    return-object v1

    :cond_31
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "fingerprintpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method private getLockParentControlPasswordFilename(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_31

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    :goto_30
    return-object v1

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_31

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_30
    return-object v1

    :cond_31
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_31

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    :goto_30
    return-object v1

    :cond_31
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method private getLockSKTPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sktpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1256
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sktpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getSignatureBackupPinFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "signaturebackuppin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 980
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "signaturebackuppin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getSignatureFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "signature.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 950
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "signature.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 471
    if-nez p2, :cond_1c

    .line 472
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 475
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 476
    const-string v1, "LockSettingsService"

    const-string v2, "maybeUpdateKeystore :keyStore.reset() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 484
    .end local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_1c
    :goto_1c
    return-void

    .line 480
    .restart local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_1d
    const-string v1, "LockSettingsService"

    const-string v2, "maybeUpdateKeystore :keyStore.password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_1c
.end method

.method private migrateOldData()V
    .registers 26

    .prologue
    .line 265
    :try_start_0
    const-string v22, "migrated"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_57

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 267
    .local v8, "cr":Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_22
    if-ge v11, v13, :cond_3e

    aget-object v20, v7, v11

    .line 268
    .local v20, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v8, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 269
    .local v21, "value":Ljava/lang/String;
    if-eqz v21, :cond_3b

    .line 270
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    :cond_3b
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    .line 274
    .end local v20    # "validSetting":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_3e
    const-string v22, "migrated"

    const-string/jumbo v23, "true"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    const-string v22, "LockSettingsService"

    const-string v23, "Migrated lock settings to new location"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_57
    const-string v22, "migrated_user_specific"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_11e

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 281
    .local v16, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 282
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v19

    .line 283
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v17, 0x0

    .local v17, "user":I
    :goto_8a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_11f

    .line 285
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 286
    .local v18, "userId":I
    const-string v5, "lock_screen_owner_info"

    .line 287
    .local v5, "OWNER_INFO":Ljava/lang/String;
    const-string v22, "lock_screen_owner_info"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 288
    .local v14, "ownerInfo":Ljava/lang/String;
    if-eqz v14, :cond_c6

    .line 289
    const-string v22, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    const-string v22, ""

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v14, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 296
    :cond_c6
    const-string v6, "lock_screen_owner_info_enabled"
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c8} :catch_112

    .line 299
    .local v6, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_c8
    const-string v22, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 300
    .local v12, "ivalue":I
    if-eqz v12, :cond_f6

    const/4 v10, 0x1

    .line 301
    .local v10, "enabled":Z
    :goto_d5
    const-string v24, "lock_screen_owner_info_enabled"

    if-eqz v10, :cond_f8

    const-wide/16 v22, 0x1

    :goto_db
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_e6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c8 .. :try_end_e6} :catch_fb
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_e6} :catch_112

    .line 308
    .end local v10    # "enabled":Z
    .end local v12    # "ivalue":I
    :cond_e6
    :goto_e6
    :try_start_e6
    const-string v22, "lock_screen_owner_info_enabled"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v8, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 283
    add-int/lit8 v17, v17, 0x1

    goto :goto_8a

    .line 300
    .restart local v12    # "ivalue":I
    :cond_f6
    const/4 v10, 0x0

    goto :goto_d5

    .line 301
    .restart local v10    # "enabled":Z
    :cond_f8
    const-wide/16 v22, 0x0

    goto :goto_db

    .line 302
    .end local v10    # "enabled":Z
    .end local v12    # "ivalue":I
    :catch_fb
    move-exception v9

    .line 304
    .local v9, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e6

    .line 305
    const-string v22, "lock_screen_owner_info_enabled"

    const-wide/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_111} :catch_112

    goto :goto_e6

    .line 314
    .end local v5    # "OWNER_INFO":Ljava/lang/String;
    .end local v6    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v14    # "ownerInfo":Ljava/lang/String;
    .end local v16    # "um":Landroid/os/UserManager;
    .end local v17    # "user":I
    .end local v18    # "userId":I
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_112
    move-exception v15

    .line 315
    .local v15, "re":Landroid/os/RemoteException;
    const-string v22, "LockSettingsService"

    const-string v23, "Unable to migrate old data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v15    # "re":Landroid/os/RemoteException;
    :cond_11e
    :goto_11e
    return-void

    .line 311
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "um":Landroid/os/UserManager;
    .restart local v17    # "user":I
    .restart local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11f
    :try_start_11f
    const-string v22, "migrated_user_specific"

    const-string/jumbo v23, "true"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v22, "LockSettingsService"

    const-string v23, "Migrated per-user lock settings to new location"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_138} :catch_112

    goto :goto_11e
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 774
    const/4 v8, 0x0

    .line 775
    .local v8, "cursor":Landroid/database/Cursor;
    move-object v10, p2

    .line 776
    .local v10, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 778
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_30

    .line 782
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 783
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_36
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3d

    move-result-object v10

    .line 789
    :cond_30
    if-eqz v8, :cond_35

    .line 790
    :goto_32
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 792
    :cond_35
    return-object v10

    .line 786
    :catch_36
    move-exception v9

    .line 787
    .local v9, "e":Ljava/lang/Exception;
    :try_start_37
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3d

    .line 789
    if-eqz v8, :cond_35

    goto :goto_32

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v1

    if-eqz v8, :cond_43

    .line 790
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 789
    :cond_43
    throw v1
.end method

.method private updateKeystore(Ljava/lang/String;I)V
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v5, 0x14

    .line 443
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    .line 446
    .local v0, "keyStore":Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 447
    invoke-virtual {v0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 467
    :cond_15
    :goto_15
    return-void

    .line 450
    :cond_16
    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->password(Ljava/lang/String;I)Z

    .line 452
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 455
    .local v1, "policyRetry":I
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    if-eq v1, v2, :cond_15

    .line 456
    if-eqz v1, :cond_52

    .line 457
    sput v1, Lcom/android/server/LockSettingsService;->maxRetry:I

    .line 458
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v0, v2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->setMaxRetryCount(I)Z

    .line 459
    const-string v2, "MDPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max retry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 460
    :cond_52
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    if-eq v5, v2, :cond_15

    .line 461
    sput v5, Lcom/android/server/LockSettingsService;->maxRetry:I

    .line 462
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v0, v2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->setMaxRetryCount(I)Z

    .line 463
    const-string v2, "MDPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max retry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 725
    const/4 v2, 0x0

    .line 728
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_6c

    .line 730
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_d

    :try_start_a
    array-length v4, p2

    if-nez v4, :cond_17

    .line 731
    :cond_d
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 740
    :goto_12
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    move-object v2, v3

    .line 750
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_16
    :goto_16
    return-void

    .line 734
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_17
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sget v6, Lcom/android/server/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2c

    .line 735
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 736
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 738
    :cond_2c
    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_31} :catch_32

    goto :goto_12

    .line 741
    :catch_32
    move-exception v0

    move-object v2, v3

    .line 742
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_34
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    if-eqz v2, :cond_16

    .line 745
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_16

    .line 746
    :catch_52
    move-exception v1

    .line 747
    .local v1, "ioeClose":Ljava/io/IOException;
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot close file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 741
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "ioeClose":Ljava/io/IOException;
    :catch_6c
    move-exception v0

    goto :goto_34
.end method

.method private writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 757
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 758
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 764
    :try_start_1d
    const-string v1, "locksettings"

    const-string v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 766
    const-string v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 767
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_3e

    .line 769
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 771
    return-void

    .line 769
    :catchall_3e
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 754
    return-void
.end method


# virtual methods
.method public checkBackupPin(Ljava/lang/String;I)Z
    .registers 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1147
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1148
    const/4 v6, 0x0

    .line 1151
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_41
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_5c

    .line 1152
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_10
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v8, v10, [B

    .line 1153
    .local v8, "stored":[B
    const/4 v10, 0x0

    array-length v11, v8

    invoke-virtual {v7, v8, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1154
    .local v1, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1155
    if-gtz v1, :cond_25

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    move v5, v9

    .line 1177
    .end local v1    # "got":I
    .end local v8    # "stored":[B
    :goto_24
    return v5

    .line 1159
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "stored":[B
    :cond_25
    iget-object v10, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1160
    .local v2, "hash":[B
    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    .line 1161
    .local v5, "matched":Z
    if-eqz v5, :cond_3f

    .line 1162
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 1163
    const-string v10, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v11, 0x0

    invoke-virtual {p0, v10, v11, v12, p2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_3f} :catch_99
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3f} :catch_96

    :cond_3f
    move-object v6, v7

    .line 1165
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_24

    .line 1166
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v5    # "matched":Z
    .end local v8    # "stored":[B
    :catch_41
    move-exception v0

    .line 1167
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_42
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 1168
    goto :goto_24

    .line 1169
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5c
    move-exception v3

    .line 1170
    .local v3, "ioe":Ljava/io/IOException;
    :goto_5d
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    if-eqz v6, :cond_7a

    .line 1173
    :try_start_77
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7c

    :cond_7a
    :goto_7a
    move v5, v9

    .line 1177
    goto :goto_24

    .line 1174
    :catch_7c
    move-exception v4

    .line 1175
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot close file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 1169
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_96
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5d

    .line 1166
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_99
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_42
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1093
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1097
    :try_start_4
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 1099
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1100
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1101
    if-gtz v1, :cond_23

    move v4, v7

    .line 1116
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :cond_22
    :goto_22
    return v4

    .line 1105
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_23
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1106
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 1107
    .local v4, "matched":Z
    if-eqz v4, :cond_22

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_54

    goto :goto_22

    .line 1111
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_39
    move-exception v0

    .line 1112
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_52
    move v4, v7

    .line 1116
    goto :goto_22

    .line 1113
    :catch_54
    move-exception v3

    .line 1114
    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public checkParentControlPassword([BI)Z
    .registers 12
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 648
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 652
    :try_start_4
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .local v3, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 655
    .local v4, "stored":[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 656
    .local v1, "got":I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 657
    if-gtz v1, :cond_22

    .line 667
    .end local v1    # "got":I
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .end local v4    # "stored":[B
    :goto_21
    return v5

    .line 661
    .restart local v1    # "got":I
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "stored":[B
    :cond_22
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_25} :catch_27
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_41

    move-result v5

    goto :goto_21

    .line 662
    .end local v1    # "got":I
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .end local v4    # "stored":[B
    :catch_27
    move-exception v0

    .line 663
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 665
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_41
    move-exception v2

    .line 666
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 573
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 576
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 577
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->checkPassword(Ljava/lang/String;I)Z

    move-result v5

    .line 614
    .local v5, "matched":Z
    :goto_12
    if-eqz v5, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 615
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    .line 621
    .end local v5    # "matched":Z
    :cond_23
    :goto_23
    return v5

    .line 580
    :cond_24
    const/4 v6, 0x0

    .line 583
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_25
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "r"

    invoke-direct {v7, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_30} :catch_5c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_76

    .line 584
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_30
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v8, v9, [B

    .line 585
    .local v8, "stored":[B
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 586
    .local v1, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 587
    if-lez v1, :cond_23

    .line 593
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordHashSize(I)I

    move-result v9

    sget v10, Lcom/android/server/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    if-ne v9, v10, :cond_55

    .line 594
    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;)[B

    move-result-object v2

    .line 598
    .local v2, "hash":[B
    :goto_50
    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    .restart local v5    # "matched":Z
    goto :goto_12

    .line 596
    .end local v2    # "hash":[B
    .end local v5    # "matched":Z
    :cond_55
    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_5a} :catch_b8
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_5a} :catch_b5

    move-result-object v2

    .restart local v2    # "hash":[B
    goto :goto_50

    .line 599
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "stored":[B
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_5c
    move-exception v0

    .line 600
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_5d
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 602
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_76
    move-exception v3

    .line 603
    .local v3, "ioe":Ljava/io/IOException;
    :goto_77
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    if-eqz v6, :cond_23

    .line 606
    :try_start_91
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_23

    .line 607
    :catch_95
    move-exception v4

    .line 608
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 618
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "matched":Z
    :cond_b0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto/16 :goto_23

    .line 602
    .end local v5    # "matched":Z
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_b5
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_77

    .line 599
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_b8
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5d
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 545
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 548
    :try_start_4
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 550
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 551
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 552
    if-gtz v1, :cond_23

    move v4, v7

    .line 568
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :cond_22
    :goto_22
    return v4

    .line 556
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_23
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 558
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 559
    .local v4, "matched":Z
    if-eqz v4, :cond_22

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3a} :catch_56

    goto :goto_22

    .line 563
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_3b
    move-exception v0

    .line 564
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_54
    move v4, v7

    .line 568
    goto :goto_22

    .line 565
    :catch_56
    move-exception v3

    .line 566
    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public checkSKTPassword(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1211
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1212
    const/4 v6, 0x0

    .line 1215
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockSKTPasswordFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "r"

    invoke-direct {v7, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_30
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_4a

    .line 1216
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_10
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v8, v9, [B

    .line 1217
    .local v8, "stored":[B
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1218
    .local v1, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1219
    if-gtz v1, :cond_24

    move-object v6, v7

    .line 1237
    .end local v1    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "stored":[B
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :cond_23
    :goto_23
    return v5

    .line 1223
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "stored":[B
    :cond_24
    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1224
    .local v2, "hash":[B
    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_2d} :catch_86
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_83

    move-result v5

    .local v5, "matched":Z
    move-object v6, v7

    .line 1225
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_23

    .line 1226
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v5    # "matched":Z
    .end local v8    # "stored":[B
    :catch_30
    move-exception v0

    .line 1227
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_31
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1229
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_4a
    move-exception v3

    .line 1230
    .local v3, "ioe":Ljava/io/IOException;
    :goto_4b
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    if-eqz v6, :cond_23

    .line 1233
    :try_start_65
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_23

    .line 1234
    :catch_69
    move-exception v4

    .line 1235
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1229
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_83
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4b

    .line 1226
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_86
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_31
.end method

.method public checkSignatureBackupPin([BI)Z
    .registers 14
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 994
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 995
    const/4 v4, 0x0

    .line 998
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_44

    .line 999
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_10
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 1000
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1001
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1002
    if-gtz v1, :cond_24

    move-object v4, v5

    .line 1018
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_23
    :goto_23
    return v7

    .line 1006
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_24
    invoke-static {v6, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_27} :catch_80
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_27} :catch_7d

    move-result v7

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_23

    .line 1007
    .end local v1    # "got":I
    .end local v6    # "stored":[B
    :catch_2a
    move-exception v0

    .line 1008
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_2b
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1010
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_44
    move-exception v2

    .line 1011
    .local v2, "ioe":Ljava/io/IOException;
    :goto_45
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    if-eqz v4, :cond_23

    .line 1014
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_23

    .line 1015
    :catch_63
    move-exception v3

    .line 1016
    .local v3, "ioeClose":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot close file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1010
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_7d
    move-exception v2

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_45

    .line 1007
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_80
    move-exception v0

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2b
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 373
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .end local p2    # "defaultValue":Z
    :goto_e
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_f
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    const/4 p2, 0x1

    goto :goto_e

    :cond_22
    const/4 p2, 0x0

    goto :goto_e
.end method

.method public getLockPasswordHashSize(I)I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 910
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 911
    const/4 v4, 0x0

    .line 914
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_35

    .line 915
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_10
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v3, v7

    .line 916
    .local v3, "length":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_18} :catch_72
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_6f

    move-object v4, v5

    .line 929
    .end local v3    # "length":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_19
    return v3

    .line 918
    :catch_1a
    move-exception v0

    .line 919
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1b
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 920
    goto :goto_19

    .line 921
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_35
    move-exception v1

    .line 922
    .local v1, "ioe":Ljava/io/IOException;
    :goto_36
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-eqz v4, :cond_53

    .line 925
    :try_start_50
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_55

    :cond_53
    :goto_53
    move v3, v6

    .line 929
    goto :goto_19

    .line 926
    :catch_55
    move-exception v2

    .line 927
    .local v2, "ioeClose":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot close file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 921
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_6f
    move-exception v1

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_36

    .line 918
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_72
    move-exception v0

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1b
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 382
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .end local p2    # "defaultValue":J
    :goto_e
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_e
.end method

.method public getParentControlPasswordHashSize(I)I
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v4, -0x1

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 682
    :try_start_4
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .local v3, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v2, v5

    .line 685
    .local v2, "length":I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_17} :catch_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_17} :catch_33

    .line 692
    .end local v2    # "length":I
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    :goto_17
    return v2

    .line 687
    :catch_18
    move-exception v0

    .line 688
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 689
    goto :goto_17

    .line 690
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_33
    move-exception v1

    .line 691
    .local v1, "ioe":Ljava/io/IOException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 692
    goto :goto_17
.end method

.method public getSignatureInfo(I)[B
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1024
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSignatureInfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1026
    const/4 v6, 0x0

    .line 1029
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_20
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2b} :catch_81
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_9c

    .line 1030
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    if-eqz v7, :cond_7e

    .line 1031
    const/16 v10, 0x58

    :try_start_2f
    new-array v9, v10, [B

    .line 1032
    .local v9, "settings":[B
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v8, v10

    .line 1037
    .local v8, "savedSettingsLength":I
    const/16 v10, 0x54

    if-ne v8, v10, :cond_6f

    .line 1038
    const-string v10, "LockSettingsService"

    const-string v11, "Read old signature lock settings"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-array v5, v8, [B

    .line 1041
    .local v5, "prev":[B
    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1044
    .local v1, "got":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    const/16 v10, 0x24

    if-ge v2, v10, :cond_54

    .line 1045
    aget-byte v10, v5, v2

    aput-byte v10, v9, v2

    .line 1044
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1048
    :cond_54
    const/16 v2, 0x24

    :goto_56
    const/16 v10, 0x28

    if-ge v2, v10, :cond_60

    .line 1049
    const/4 v10, 0x0

    aput-byte v10, v9, v2

    .line 1048
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1051
    :cond_60
    const/16 v2, 0x28

    :goto_62
    const/16 v10, 0x58

    if-ge v2, v10, :cond_74

    .line 1052
    add-int/lit8 v10, v2, -0x4

    aget-byte v10, v5, v10

    aput-byte v10, v9, v2

    .line 1051
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 1055
    .end local v1    # "got":I
    .end local v2    # "i":I
    .end local v5    # "prev":[B
    :cond_6f
    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1057
    .restart local v1    # "got":I
    :cond_74
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_77} :catch_d9
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_77} :catch_d6

    .line 1058
    if-gtz v1, :cond_7c

    .line 1059
    const/4 v9, 0x0

    .end local v9    # "settings":[B
    move-object v6, v7

    .line 1075
    .end local v1    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :goto_7b
    return-object v9

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "savedSettingsLength":I
    .restart local v9    # "settings":[B
    :cond_7c
    move-object v6, v7

    .line 1061
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7b

    .line 1063
    .end local v1    # "got":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .end local v9    # "settings":[B
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_7e
    const/4 v9, 0x0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7b

    .line 1064
    :catch_81
    move-exception v0

    .line 1065
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_82
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v9, 0x0

    goto :goto_7b

    .line 1067
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_9c
    move-exception v3

    .line 1068
    .local v3, "ioe":Ljava/io/IOException;
    :goto_9d
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    if-eqz v6, :cond_ba

    .line 1071
    :try_start_b7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bc

    .line 1075
    :cond_ba
    :goto_ba
    const/4 v9, 0x0

    goto :goto_7b

    .line 1072
    :catch_bc
    move-exception v4

    .line 1073
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot close file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1067
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_d6
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_9d

    .line 1064
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_d9
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_82
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveBackupPin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1204
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveFingerprintPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1123
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveParentControlPassword(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 674
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public havePassword(I)Z
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 424
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 425
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 430
    .local v0, "result":Z
    :goto_18
    return v0

    .end local v0    # "result":Z
    :cond_19
    move v0, v1

    .line 425
    goto :goto_18

    .line 428
    :cond_1b
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    .restart local v0    # "result":Z
    :goto_2e
    goto :goto_18

    .end local v0    # "result":Z
    :cond_2f
    move v0, v1

    goto :goto_2e
.end method

.method public havePattern(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveSKTPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1265
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockSKTPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveSignature(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveSignatureBackupPin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 962
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public lock(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 343
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    .line 344
    .local v0, "keyStore":Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->isUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->lock(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public removeUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 701
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 703
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 705
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 707
    :cond_1b
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 709
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 711
    :cond_2d
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 713
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 716
    :cond_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 717
    const-string v2, "locksettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 718
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catchall {:try_start_9 .. :try_end_65} :catchall_69

    .line 720
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 722
    return-void

    .line 720
    .end local v1    # "file":Ljava/io/File;
    :catchall_69
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 352
    if-eqz p2, :cond_b

    const-string v0, "1"

    :goto_7
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    return-void

    .line 352
    :cond_b
    const-string v0, "0"

    goto :goto_7
.end method

.method public setLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1184
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1185
    return-void
.end method

.method public setLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1088
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1089
    return-void
.end method

.method public setLockParentControlPassword([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 641
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 643
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 644
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 522
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 523
    .local v1, "versionInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_2b

    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 524
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 525
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 526
    invoke-virtual {v0, p2, p1}, Landroid/os/PersonaManager;->savePasswordInTima(ILjava/lang/String;)Z

    .line 532
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_2b
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    .line 541
    :goto_34
    return-void

    .line 535
    :cond_35
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 537
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_34
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 489
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLockPattern : maybeUpdateKeystore(pattern = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 491
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : maybeUpdateKeystore()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 495
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_6b

    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 496
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : PERSONA_SERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 498
    .local v1, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v1, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 499
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : savePasswordInTima"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v1, p2, p1}, Landroid/os/PersonaManager;->savePasswordInTima(ILjava/lang/String;)Z

    .line 504
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :cond_6b
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : patternToHash"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 508
    .local v0, "hash":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_90

    .line 509
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern :pattern.length(0) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 515
    :goto_8f
    return-void

    .line 512
    :cond_90
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern :keyStore.reset() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_8f
.end method

.method public setLockSKTPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1243
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1245
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockSKTPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1246
    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 359
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    return-void
.end method

.method public setSignatureBackupPin([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 989
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 990
    return-void
.end method

.method public setSignatureInfo([BI)V
    .registers 6
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignatureInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 970
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 971
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 366
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    return-void
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 259
    return-void
.end method
