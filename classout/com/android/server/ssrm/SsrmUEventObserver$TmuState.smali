.class Lcom/android/server/ssrm/SsrmUEventObserver$TmuState;
.super Ljava/lang/Object;
.source "SsrmUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/SsrmUEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TmuState"
.end annotation


# static fields
.field static final FIRST_THROTTLING:I = 0x1

.field static final SECOND_THROTTLING:I = 0x2

.field static final TRIPPING:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/SsrmUEventObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/SsrmUEventObserver;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/ssrm/SsrmUEventObserver$TmuState;->this$0:Lcom/android/server/ssrm/SsrmUEventObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
