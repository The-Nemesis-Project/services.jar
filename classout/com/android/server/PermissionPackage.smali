.class Lcom/android/server/PermissionPackage;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field agentTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field packages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/PackageObject;",
            ">;"
        }
    .end annotation
.end field

.field seinfos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 827
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 828
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    .line 829
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    .line 830
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    .line 831
    return-void
.end method
