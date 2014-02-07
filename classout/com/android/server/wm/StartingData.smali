.class final Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field final compatInfo:Landroid/content/res/CompatibilityInfo;

.field final icon:I

.field final labelRes:I

.field final nonLocalizedLabel:Ljava/lang/CharSequence;

.field final pkg:Ljava/lang/String;

.field final theme:I

.field final windowFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "_pkg"    # Ljava/lang/String;
    .param p2, "_theme"    # I
    .param p3, "_compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "_nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p5, "_labelRes"    # I
    .param p6, "_icon"    # I
    .param p7, "_windowFlags"    # I

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/android/server/wm/StartingData;->theme:I

    .line 35
    iput-object p3, p0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 36
    iput-object p4, p0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 37
    iput p5, p0, Lcom/android/server/wm/StartingData;->labelRes:I

    .line 38
    iput p6, p0, Lcom/android/server/wm/StartingData;->icon:I

    .line 39
    iput p7, p0, Lcom/android/server/wm/StartingData;->windowFlags:I

    .line 40
    return-void
.end method
