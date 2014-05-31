.class public Lcom/android/server/pm/KeySetManager;
.super Ljava/lang/Object;
.source "KeySetManager.java"


# static fields
.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field private static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManager"

.field private static lastIssuedKeyId:J

.field private static lastIssuedKeySetId:J


# instance fields
.field private final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockObject:Ljava/lang/Object;

.field private final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    .line 63
    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    .line 67
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 68
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 69
    iput-object p1, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    .line 70
    return-void
.end method

.method private addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Landroid/content/pm/KeySet;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-nez p1, :cond_a

    .line 242
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Provided keys cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 245
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 246
    .local v0, "addedKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PublicKey;

    .line 247
    .local v6, "k":Ljava/security/PublicKey;
    invoke-direct {p0, v6}, Lcom/android/server/pm/KeySetManager;->addPublicKeyLocked(Ljava/security/PublicKey;)J

    move-result-wide v4

    .line 248
    .local v4, "id":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 252
    .end local v4    # "id":J
    .end local v6    # "k":Ljava/security/PublicKey;
    :cond_2f
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManager;->getIdFromKeyIdsLocked(Ljava/util/Set;)J

    move-result-wide v1

    .line 253
    .local v1, "existingKeySetId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_42

    .line 254
    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/KeySet;

    .line 266
    :goto_41
    return-object v8

    .line 258
    :cond_42
    new-instance v7, Landroid/content/pm/KeySet;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-direct {v7, v8}, Landroid/content/pm/KeySet;-><init>(Landroid/os/Binder;)V

    .line 260
    .local v7, "ks":Landroid/content/pm/KeySet;
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManager;->getFreeKeySetIDLocked()J

    move-result-wide v4

    .line 262
    .restart local v4    # "id":J
    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 264
    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v8, v7

    .line 266
    goto :goto_41
.end method

.method private addPublicKeyLocked(Ljava/security/PublicKey;)J
    .registers 8
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getIdForPublicKeyLocked(Ljava/security/PublicKey;)J

    move-result-wide v0

    .line 275
    .local v0, "existingKeyId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_b

    .line 283
    .end local v0    # "existingKeyId":J
    :goto_a
    return-wide v0

    .line 279
    .restart local v0    # "existingKeyId":J
    :cond_b
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManager;->getFreePublicKeyIdLocked()J

    move-result-wide v2

    .line 281
    .local v2, "id":J
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-wide v0, v2

    .line 283
    goto :goto_a
.end method

.method private getFreeKeySetIDLocked()J
    .registers 5

    .prologue
    .line 320
    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    .line 321
    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    return-wide v0
.end method

.method private getFreePublicKeyIdLocked()J
    .registers 5

    .prologue
    .line 328
    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    .line 329
    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    return-wide v0
.end method

.method private getIdByKeySetLocked(Landroid/content/pm/KeySet;)J
    .registers 6
    .param p1, "ks"    # Landroid/content/pm/KeySet;

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "keySetIndex":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 168
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/KeySet;

    .line 169
    .local v1, "value":Landroid/content/pm/KeySet;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 170
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 173
    .end local v1    # "value":Landroid/content/pm/KeySet;
    :goto_1d
    return-wide v2

    .line 167
    .restart local v1    # "value":Landroid/content/pm/KeySet;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v1    # "value":Landroid/content/pm/KeySet;
    :cond_21
    const-wide/16 v2, -0x1

    goto :goto_1d
.end method

.method private getIdForPublicKeyLocked(Ljava/security/PublicKey;)J
    .registers 8
    .param p1, "k"    # Ljava/security/PublicKey;

    .prologue
    .line 305
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 306
    .local v1, "encodedPublicKey":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "publicKeyIndex":I
    :goto_a
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_33

    .line 307
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    .line 308
    .local v3, "value":Ljava/security/PublicKey;
    new-instance v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 309
    .local v0, "encodedExistingKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 310
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 313
    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :goto_2f
    return-wide v4

    .line 306
    .restart local v0    # "encodedExistingKey":Ljava/lang/String;
    .restart local v3    # "value":Ljava/security/PublicKey;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 313
    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :cond_33
    const-wide/16 v4, -0x1

    goto :goto_2f
.end method

.method private getIdFromKeyIdsLocked(Ljava/util/Set;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "keyMapIndex":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 293
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 294
    .local v1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 295
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 298
    .end local v1    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_1d
    return-wide v2

    .line 292
    .restart local v1    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    .end local v1    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_21
    const-wide/16 v2, -0x1

    goto :goto_1d
.end method

.method private getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 384
    .local v6, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_12

    .line 385
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unknown package"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 387
    :cond_12
    iget-object v7, v6, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_1e

    .line 388
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Package has no keySet data"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 390
    :cond_1e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v2, "knownKeySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v7, v6, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2b
    if-ge v1, v5, :cond_39

    aget-wide v3, v0, v1

    .line 392
    .local v3, "ks":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 394
    .end local v3    # "ks":J
    :cond_39
    iget-object v7, v6, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v0

    array-length v5, v0

    const/4 v1, 0x0

    :goto_41
    if-ge v1, v5, :cond_4f

    aget-wide v3, v0, v1

    .line 395
    .restart local v3    # "ks":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 397
    .end local v3    # "ks":J
    :cond_4f
    return-object v2
.end method


# virtual methods
.method public addDefinedKeySetToPackage(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 117
    :cond_6
    :goto_6
    return-void

    .line 108
    :cond_7
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v5

    .line 109
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManager;->addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;

    move-result-object v2

    .line 110
    .local v2, "ks":Landroid/content/pm/KeySet;
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 111
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_23

    .line 112
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v6, "Unknown package"

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    .end local v2    # "ks":Landroid/content/pm/KeySet;
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    :catchall_20
    move-exception v4

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v4

    .line 114
    .restart local v2    # "ks":Landroid/content/pm/KeySet;
    .restart local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_23
    :try_start_23
    invoke-direct {p0, v2}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v0

    .line 115
    .local v0, "id":J
    iget-object v4, v3, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v0, v1, p3}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 116
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_20

    goto :goto_6
.end method

.method public addSigningKeySetToPackage(Ljava/lang/String;Ljava/util/Set;)V
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "signingKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 154
    :cond_4
    :goto_4
    return-void

    .line 129
    :cond_5
    iget-object v12, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v12

    .line 131
    :try_start_8
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManager;->addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;

    move-result-object v7

    .line 132
    .local v7, "ks":Landroid/content/pm/KeySet;
    invoke-direct {p0, v7}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v4

    .line 133
    .local v4, "id":J
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 134
    .local v10, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v10, :cond_27

    .line 135
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v13, "Got invalid KeySet id"

    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 153
    .end local v4    # "id":J
    .end local v7    # "ks":Landroid/content/pm/KeySet;
    .end local v10    # "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_24
    move-exception v11

    monitor-exit v12
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v11

    .line 139
    .restart local v4    # "id":J
    .restart local v7    # "ks":Landroid/content/pm/KeySet;
    .restart local v10    # "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_27
    :try_start_27
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 140
    .local v9, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v9, :cond_3b

    .line 141
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v13, "No such package!"

    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 143
    :cond_3b
    iget-object v11, v9, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v11, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    .line 147
    iget-object v11, v9, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v1

    .local v1, "arr$":[J
    array-length v8, v1

    .local v8, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_48
    if-ge v3, v8, :cond_6e

    aget-wide v13, v1, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 148
    .local v6, "keySetID":Ljava/lang/Long;
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 149
    .local v2, "definedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 150
    iget-object v11, v9, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    .line 147
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 153
    .end local v2    # "definedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v6    # "keySetID":Ljava/lang/Long;
    :cond_6e
    monitor-exit v12
    :try_end_6f
    .catchall {:try_start_27 .. :try_end_6f} :catchall_24

    goto :goto_4
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v14

    .line 407
    const/4 v11, 0x0

    .line 408
    .local v11, "printedHeader":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_127

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 409
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 410
    .local v8, "keySetPackage":Ljava/lang/String;
    if-eqz p2, :cond_2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 413
    :cond_2e
    if-nez v11, :cond_41

    .line 414
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v13

    if-eqz v13, :cond_39

    .line 415
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 416
    :cond_39
    const-string v13, "Key Set Manager:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const/4 v11, 0x1

    .line 419
    :cond_41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 420
    .local v10, "pkg":Lcom/android/server/pm/PackageSetting;
    const-string v13, "  ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    iget-object v13, v10, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v13, :cond_12

    .line 422
    const/4 v12, 0x0

    .line 423
    .local v12, "printedLabel":Z
    iget-object v13, v10, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 424
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v12, :cond_ac

    .line 425
    const-string v13, "      KeySets Aliases: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    const/4 v12, 0x1

    .line 430
    :goto_83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    const/16 v13, 0x3d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 432
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6d

    .line 465
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "keySetPackage":Ljava/lang/String;
    .end local v10    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "printedLabel":Z
    :catchall_a9
    move-exception v13

    monitor-exit v14
    :try_end_ab
    .catchall {:try_start_6 .. :try_end_ab} :catchall_a9

    throw v13

    .line 428
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "keySetPackage":Ljava/lang/String;
    .restart local v10    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v12    # "printedLabel":Z
    :cond_ac
    :try_start_ac
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_83

    .line 434
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_b4
    if-eqz v12, :cond_bd

    .line 435
    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    :cond_bd
    const/4 v12, 0x0

    .line 438
    iget-object v13, v10, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v1

    .local v1, "arr$":[J
    array-length v9, v1

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_c6
    if-ge v5, v9, :cond_e8

    aget-wide v6, v1, v5

    .line 439
    .local v6, "keySetId":J
    if-nez v12, :cond_e0

    .line 440
    const-string v13, "      Defined KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    const/4 v12, 0x1

    .line 445
    :goto_d4
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_c6

    .line 443
    :cond_e0
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d4

    .line 447
    .end local v6    # "keySetId":J
    :cond_e8
    if-eqz v12, :cond_f1

    .line 448
    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    :cond_f1
    const/4 v12, 0x0

    .line 451
    iget-object v13, v10, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v1

    array-length v9, v1

    const/4 v5, 0x0

    :goto_fa
    if-ge v5, v9, :cond_11c

    aget-wide v6, v1, v5

    .line 452
    .restart local v6    # "keySetId":J
    if-nez v12, :cond_114

    .line 453
    const-string v13, "      Signing KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    const/4 v12, 0x1

    .line 458
    :goto_108
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    add-int/lit8 v5, v5, 0x1

    goto :goto_fa

    .line 456
    :cond_114
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_108

    .line 460
    .end local v6    # "keySetId":J
    :cond_11c
    if-eqz v12, :cond_12

    .line 461
    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 465
    .end local v1    # "arr$":[J
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v5    # "i$":I
    .end local v8    # "keySetPackage":Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "printedLabel":Z
    :cond_127
    monitor-exit v14
    :try_end_128
    .catchall {:try_start_ac .. :try_end_128} :catchall_a9

    .line 466
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 5
    .param p1, "k"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getIdByKeySet(Landroid/content/pm/KeySet;)J
    .registers 6
    .param p1, "ks"    # Landroid/content/pm/KeySet;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 163
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getKeySetByAliasAndPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 196
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 197
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_18

    .line 198
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Unknown package"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    .end local v2    # "p":Lcom/android/server/pm/PackageSetting;
    :catchall_15
    move-exception v3

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3

    .line 200
    .restart local v2    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_18
    :try_start_18
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v3, :cond_24

    .line 201
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package has no keySet data"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :cond_24
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 204
    .local v0, "keySetId":J
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/KeySet;

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_15

    return-object v3
.end method

.method public getKeySetById(J)Landroid/content/pm/KeySet;
    .registers 5
    .param p1, "id"    # J

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/KeySet;

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getSigningKeySetsByPackageName(Ljava/lang/String;)Ljava/util/Set;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v8

    .line 214
    :try_start_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 215
    .local v6, "signingKeySets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/KeySet;>;"
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 216
    .local v5, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_1d

    .line 217
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v9, "Unknown package"

    invoke-direct {v7, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 226
    .end local v5    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "signingKeySets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/KeySet;>;"
    :catchall_1a
    move-exception v7

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v7

    .line 219
    .restart local v5    # "p":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "signingKeySets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/KeySet;>;"
    :cond_1d
    :try_start_1d
    iget-object v7, v5, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_29

    .line 220
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Package has no keySet data"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    :cond_29
    iget-object v7, v5, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_31
    if-ge v1, v4, :cond_41

    aget-wide v2, v0, v1

    .line 223
    .local v2, "l":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 225
    .end local v2    # "l":J
    :cond_41
    monitor-exit v8
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_1a

    return-object v6
.end method

.method public packageIsSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .prologue
    .line 84
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 86
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_18

    .line 87
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Invalid package name"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    :catchall_15
    move-exception v3

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3

    .line 89
    .restart local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_18
    :try_start_18
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v3, :cond_24

    .line 90
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Package has no KeySet data"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_24
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v0

    .line 93
    .local v0, "id":J
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->packageIsSignedBy(J)Z

    move-result v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_15

    return v3
.end method

.method readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 551
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 553
    .local v4, "outerDepth":I
    const-wide/16 v0, 0x0

    .line 555
    .local v0, "currentKeySetId":J
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_61

    if-ne v6, v10, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_61

    .line 556
    :cond_16
    if-eq v6, v10, :cond_7

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    .line 559
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "keyset"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v0

    .line 562
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v8, Landroid/content/pm/KeySet;

    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    invoke-direct {v8, v9}, Landroid/content/pm/KeySet;-><init>(Landroid/os/Binder;)V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 563
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_7

    .line 564
    :cond_45
    const-string v7, "key-id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v2

    .line 566
    .local v2, "id":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 569
    .end local v2    # "id":J
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_61
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    const-wide/16 v0, 0x0

    .line 516
    .local v0, "currentKeySetId":J
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    .line 517
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 520
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "keys"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 523
    :cond_1f
    const-string v4, "keysets"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 527
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2b
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 531
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 534
    .local v0, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_56

    if-ne v2, v5, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_56

    .line 535
    :cond_15
    if-eq v2, v5, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    .line 538
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 541
    :cond_2a
    const-string v3, "lastIssuedKeyId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 542
    const-string/jumbo v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    goto :goto_6

    .line 543
    :cond_40
    const-string v3, "lastIssuedKeySetId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 544
    const-string/jumbo v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    goto :goto_6

    .line 547
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 578
    const-string v5, "identifier"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "encodedID":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 580
    .local v2, "identifier":J
    const-string/jumbo v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "encodedPublicKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 582
    .local v4, "pub":Ljava/security/PublicKey;
    if-eqz v4, :cond_1d

    .line 583
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 585
    :cond_1d
    return-void
.end method

.method public removeAppKeySetData(Ljava/lang/String;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v11

    .line 335
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 336
    .local v0, "deletableKeySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 337
    .local v1, "deletableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 338
    .local v6, "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 339
    .local v7, "ks":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    check-cast v6, Ljava/util/Set;

    .line 340
    .restart local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v6, :cond_11

    .line 341
    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    .line 379
    .end local v0    # "deletableKeySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1    # "deletableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v7    # "ks":Ljava/lang/Long;
    :catchall_2f
    move-exception v10

    monitor-exit v11
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v10

    .line 346
    .restart local v0    # "deletableKeySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v1    # "deletableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_32
    :try_start_32
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 347
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 350
    invoke-direct {p0, v9}, Lcom/android/server/pm/KeySetManager;->getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 351
    .local v5, "knownKeySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 352
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 353
    .restart local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5e
    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 354
    .restart local v7    # "ks":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    check-cast v6, Ljava/util/Set;

    .line 355
    .restart local v6    # "knownKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v6, :cond_5e

    .line 356
    invoke-interface {v1, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5e

    .line 363
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "knownKeySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v7    # "ks":Ljava/lang/Long;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_7c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 364
    .restart local v7    # "ks":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    .line 365
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_80

    .line 367
    .end local v7    # "ks":Ljava/lang/Long;
    :cond_9f
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 368
    .local v4, "keyId":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_a3

    .line 372
    .end local v4    # "keyId":Ljava/lang/Long;
    :cond_b9
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 373
    .restart local v9    # "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 374
    .local v8, "p":Lcom/android/server/pm/PackageSetting;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 375
    .restart local v7    # "ks":Ljava/lang/Long;
    iget-object v10, v8, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/android/server/pm/PackageKeySetData;->removeSigningKeySet(J)V

    .line 376
    iget-object v10, v8, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/android/server/pm/PackageKeySetData;->removeDefinedKeySet(J)V

    goto :goto_db

    .line 379
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "ks":Ljava/lang/Long;
    .end local v8    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_fa
    monitor-exit v11
    :try_end_fb
    .catchall {:try_start_32 .. :try_end_fb} :catchall_2f

    .line 380
    return-void
.end method

.method writeKeySetManagerLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 469
    const-string v0, "keyset-settings"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 472
    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    const-string/jumbo v0, "value"

    sget-wide v1, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    const-string/jumbo v0, "value"

    sget-wide v1, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    const-string v0, "keyset-settings"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 496
    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    const/4 v5, 0x0

    .local v5, "keySetIndex":I
    :goto_7
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5b

    .line 498
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 499
    .local v1, "id":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 500
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const-string v7, "identifier"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 503
    .local v3, "keyId":J
    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    const-string v7, "identifier"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2f

    .line 507
    .end local v3    # "keyId":J
    :cond_53
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 509
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":J
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_5b
    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 482
    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    const/4 v4, 0x0

    .local v4, "pKeyIndex":I
    :goto_7
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3d

    .line 484
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 485
    .local v1, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    .line 486
    .local v3, "key":Ljava/security/PublicKey;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/KeySetManager;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "encodedKey":Ljava/lang/String;
    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    const-string v5, "identifier"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const-string/jumbo v5, "value"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 492
    .end local v0    # "encodedKey":Ljava/lang/String;
    .end local v1    # "id":J
    .end local v3    # "key":Ljava/security/PublicKey;
    :cond_3d
    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    return-void
.end method
