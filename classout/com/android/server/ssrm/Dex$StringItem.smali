.class Lcom/android/server/ssrm/Dex$StringItem;
.super Ljava/lang/Object;
.source "Dex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringItem"
.end annotation


# instance fields
.field public offset:I

.field public str:Ljava/lang/String;

.field public strSize:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
