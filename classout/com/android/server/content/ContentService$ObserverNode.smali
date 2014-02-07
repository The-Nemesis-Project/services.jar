.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 695
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 696
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 697
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/ContentService$ObserverNode;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"    # Z
    .param p5, "observersLock"    # Ljava/lang/Object;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .param p8, "userHandle"    # I

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v1

    if-ne p2, v1, :cond_1d

    .line 762
    iget-object v8, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v1, p0

    move-object v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :goto_1c
    return-void

    .line 768
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v11

    .line 769
    .local v11, "segment":Ljava/lang/String;
    if-nez v11, :cond_42

    .line 770
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used for observer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :cond_42
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 773
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_49
    if-ge v10, v9, :cond_70

    .line 774
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    .line 775
    .local v0, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 776
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    goto :goto_1c

    .line 773
    :cond_6d
    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    .line 783
    .end local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_70
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v0, v11}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 784
    .restart local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    goto :goto_1c
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V
    .registers 14
    .param p1, "leaf"    # Z
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    const/4 v7, -0x1

    .line 821
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 822
    .local v0, "N":I
    if-nez p2, :cond_25

    const/4 v3, 0x0

    .line 823
    .local v3, "observerBinder":Landroid/os/IBinder;
    :goto_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_4d

    .line 824
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 828
    .local v1, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v3, :cond_2a

    const/4 v4, 0x1

    .line 829
    .local v4, "selfChange":Z
    :goto_1e
    if-eqz v4, :cond_2c

    if-nez p3, :cond_2c

    .line 823
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 822
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v2    # "i":I
    .end local v3    # "observerBinder":Landroid/os/IBinder;
    .end local v4    # "selfChange":Z
    :cond_25
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_a

    .line 828
    .restart local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v2    # "i":I
    .restart local v3    # "observerBinder":Landroid/os/IBinder;
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1e

    .line 834
    .restart local v4    # "selfChange":Z
    :cond_2c
    if-eq p4, v7, :cond_3a

    # getter for: Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$100(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v5

    if-eq v5, v7, :cond_3a

    # getter for: Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$100(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v5

    if-ne p4, v5, :cond_22

    .line 838
    :cond_3a
    if-nez p1, :cond_42

    if-nez p1, :cond_22

    iget-boolean v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v5, :cond_22

    .line 839
    :cond_42
    new-instance v5, Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v6, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-direct {v5, p0, v6, v4}, Lcom/android/server/content/ContentService$ObserverCall;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 843
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v4    # "selfChange":Z
    :cond_4d
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 743
    if-nez p1, :cond_4

    .line 744
    const/4 v0, 0x0

    .line 746
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I

    .prologue
    .line 731
    if-eqz p1, :cond_16

    .line 732
    if-nez p2, :cond_9

    .line 733
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 738
    :goto_8
    return-object v0

    .line 735
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    .line 738
    :cond_16
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # I

    .prologue
    .line 753
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 755
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    const/4 v9, 0x0

    .line 852
    .local v9, "segment":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v10

    .line 853
    .local v10, "segmentCount":I
    if-lt p2, v10, :cond_3c

    .line 855
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 864
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 865
    .local v7, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_19
    if-ge v8, v7, :cond_3b

    .line 866
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    .line 867
    .local v0, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v9, :cond_2d

    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 869
    :cond_2d
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 871
    if-eqz v9, :cond_4e

    .line 876
    .end local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_3b
    return-void

    .line 857
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_3c
    if-ge p2, v10, :cond_12

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 860
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    goto :goto_12

    .line 865
    .restart local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    .restart local v7    # "N":I
    .restart local v8    # "i":I
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_19
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "counts"    # [I
    .param p7, "pidCounts"    # Landroid/util/SparseIntArray;

    .prologue
    .line 701
    const/4 v4, 0x0

    .line 702
    .local v4, "innerName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 703
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 704
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 708
    :goto_13
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_14
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_51

    .line 709
    const/4 v0, 0x1

    aget v1, p6, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p6, v0

    .line 710
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 708
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 706
    .end local v8    # "i":I
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 714
    :cond_51
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a4

    .line 715
    if-nez v4, :cond_65

    .line 716
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 717
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 722
    :cond_65
    :goto_65
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_66
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_a4

    .line 723
    const/4 v0, 0x0

    aget v1, p6, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p6, v0

    .line 724
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 722
    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    .line 719
    .end local v8    # "i":I
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_65

    .line 728
    :cond_a4
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .registers 9
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .prologue
    const/4 v6, 0x0

    .line 790
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 791
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v4, :cond_24

    .line 792
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v5, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v0

    .line 793
    .local v0, "empty":Z
    if-eqz v0, :cond_21

    .line 794
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 795
    add-int/lit8 v2, v2, -0x1

    .line 796
    add-int/lit8 v4, v4, -0x1

    .line 791
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 800
    .end local v0    # "empty":Z
    :cond_24
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 801
    .local v3, "observerBinder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 802
    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v4, :cond_49

    .line 803
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 804
    .local v1, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v3, :cond_5b

    .line 805
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 807
    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 812
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_49
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5e

    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5e

    .line 813
    const/4 v5, 0x1

    .line 815
    :goto_5a
    return v5

    .line 802
    .restart local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_5e
    move v5, v6

    .line 815
    goto :goto_5a
.end method
