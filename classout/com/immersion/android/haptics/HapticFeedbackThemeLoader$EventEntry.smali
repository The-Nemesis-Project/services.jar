.class Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;
.super Ljava/lang/Object;
.source "HapticFeedbackThemeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventEntry"
.end annotation


# instance fields
.field public strEvent:Ljava/lang/String;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;


# direct methods
.method private constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
    .param p2, "x1"    # Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V

    return-void
.end method
