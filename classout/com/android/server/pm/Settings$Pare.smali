.class Lcom/android/server/pm/Settings$Pare;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pare"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/Settings;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/pm/Settings$Pare;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
