.class final Lcom/sec/knox/container/signapk/CertSignature$1;
.super Ljava/lang/Object;
.source "CertSignature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/signapk/CertSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/knox/container/signapk/CertSignature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/signapk/CertSignature;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 196
    new-instance v0, Lcom/sec/knox/container/signapk/CertSignature;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/knox/container/signapk/CertSignature;-><init>(Landroid/os/Parcel;Lcom/sec/knox/container/signapk/CertSignature$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/signapk/CertSignature$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/signapk/CertSignature;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/knox/container/signapk/CertSignature;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 200
    new-array v0, p1, [Lcom/sec/knox/container/signapk/CertSignature;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/signapk/CertSignature$1;->newArray(I)[Lcom/sec/knox/container/signapk/CertSignature;

    move-result-object v0

    return-object v0
.end method
