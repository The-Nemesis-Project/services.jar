.class Lcom/android/server/smartclip/SpenGestureManagerService$5;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->showPenWindowGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/widget/CheckBox;)V
    .registers 3

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iput-object p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 571
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_guidepopup_pen"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    :cond_16
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 574
    return-void
.end method
