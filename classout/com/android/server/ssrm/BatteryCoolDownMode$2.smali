.class Lcom/android/server/ssrm/BatteryCoolDownMode$2;
.super Ljava/lang/Object;
.source "BatteryCoolDownMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/BatteryCoolDownMode;->showCoolDownAlert(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$2;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    if-eqz p1, :cond_5

    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    :cond_5
    return-void
.end method
