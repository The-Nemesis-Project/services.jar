.class public Lcom/android/server/ssrm/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = null

.field public static BASE_MODEL:Ljava/lang/String; = null

.field public static COMMON_GESTURE_WITH_FINGERHOVER:Z = false

.field public static COMMON_HW_VENDOR_CONFIG:Ljava/lang/String; = null

.field public static COMMON_REGION:Ljava/lang/String; = null

.field public static DISABLE_DYNAMIC_FPS:Z = false

.field public static IS_ITALY_MODEL:Z = false

.field public static IS_KOR_MODEL:Z = false

.field public static MODEL_CHAGALL:Z = false

.field public static MODEL_D2:Z = false

.field public static MODEL_F_LTE:Z = false

.field public static MODEL_H:Z = false

.field public static MODEL_HA:Z = false

.field public static MODEL_HF:Z = false

.field public static MODEL_J:Z = false

.field public static MODEL_J6:Z = false

.field public static MODEL_JA:Z = false

.field public static MODEL_JF:Z = false

.field public static MODEL_JF_REFRESH:Z = false

.field public static MODEL_JS01:Z = false

.field public static MODEL_K:Z = false

.field public static MODEL_KA:Z = false

.field public static MODEL_KF:Z = false

.field public static MODEL_KS01:Z = false

.field public static MODEL_LT03:Z = false

.field public static MODEL_LT03_3GWIFI:Z = false

.field public static MODEL_LT03_LTE:Z = false

.field public static MODEL_MONDRIAN:Z = false

.field public static MODEL_MS01_3G:Z = false

.field public static MODEL_V1:Z = false

.field public static MODEL_V1_3GWIFI:Z = false

.field public static MODEL_V1_LTE:Z = false

.field public static MODEL_V2:Z = false

.field public static MODEL_V2_3GWIFI:Z = false

.field public static MODEL_V2_LTE:Z = false

.field public static REGION_VZW:Z = false

.field public static SIOP_FILENAME:Ljava/lang/String; = null

.field public static SIOP_FOR_CHARGING_LIMITATION:Z = false

.field public static SIOP_TYPE:Ljava/lang/String; = null

.field public static SSRM_BATTERY_COOLDOWN_ENABLE:Z = false

.field public static SSRM_FILENAME:Ljava/lang/String; = null

.field public static SSRM_FOR_CALL_CHARGING_LIMITATION:Z = false

.field public static SSRM_HANGOUTS:Z = false

.field public static SSRM_NAVIGATION:Z = false

.field public static SSRM_POWERSTRETCH:Z = false

.field public static SSRM_PST_ENABLE:Z = false

.field public static SSRM_STS_ENABLE:Z = false

.field public static SSRM_TOUCH_BUS_QOS_BOOSTER:Z = false

.field public static SSRM_TOUCH_SEPARATION:Z = false

.field public static SSRM_TURBO_MODE_BOOSTER:Z = false

.field public static SSRM_VZW_COOLDOWN_ENABLE:Z = false

.field static final TAG:Ljava/lang/String; = "SSRMv2:Feature"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    .line 32
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    .line 34
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 36
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    .line 38
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    .line 40
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    .line 42
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    .line 44
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    .line 46
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    .line 48
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    .line 50
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    .line 52
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    .line 54
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    .line 56
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    .line 58
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    .line 60
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    .line 62
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    .line 64
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    .line 66
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    .line 68
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    .line 70
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    .line 72
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    .line 74
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    .line 76
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    .line 78
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    .line 80
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    .line 82
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    .line 84
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    .line 86
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    .line 88
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    .line 90
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    .line 92
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    .line 94
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    .line 96
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    .line 98
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    .line 100
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    .line 102
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    .line 104
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    .line 106
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 110
    :try_start_5e
    const-string v3, "com.android.server.SsrmService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "BASE_MODEL"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 114
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    .line 116
    const-string v3, "SIOP_FILENAME"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    .line 119
    const-string v3, "SSRM_FILENAME"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 120
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 122
    const-string v3, "AIR_VIEW_PROVIDER_NAME"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    .line 125
    const-string v3, "DISABLE_DYNAMIC_FPS"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 126
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    .line 128
    const-string v3, "COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    .line 131
    const-string v3, "COMMON_REGION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    .line 134
    const-string v3, "COMMON_HW_VENDOR_CONFIG"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    .line 137
    const-string v3, "KOR"

    sget-object v6, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    .line 139
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_110

    .line 141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    .line 143
    const-string v3, "SIOPS4ITALY"

    sget-object v6, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 144
    const-string/jumbo v3, "ssrm_jf_italy"

    sput-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 145
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    .line 149
    :cond_110
    const-string v3, "ha"

    sget-object v6, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 150
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    .line 152
    :cond_11d
    const-string v3, "hf"

    sget-object v6, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 153
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    .line 155
    :cond_12a
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-nez v3, :cond_132

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v3, :cond_135

    .line 156
    :cond_132
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    .line 159
    :cond_135
    const-string v3, "ka"

    sget-object v6, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 160
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    .line 162
    :cond_142
    const-string v3, "kf"

    sget-object v6, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 163
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    .line 165
    :cond_14f
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v3, :cond_157

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v3, :cond_15a

    .line 166
    :cond_157
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    .line 169
    :cond_15a
    const-string v3, "ja"

    sget-object v6, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_167

    .line 170
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    .line 172
    :cond_167
    const-string v3, "jf"

    sget-object v6, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 173
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    .line 175
    :cond_174
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-nez v3, :cond_17c

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v3, :cond_17f

    .line 176
    :cond_17c
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    .line 179
    :cond_17f
    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    if-eqz v3, :cond_298

    .line 180
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v3, :cond_194

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "lt03"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 181
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    .line 183
    :cond_194
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v3, :cond_1a5

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "lt03"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 184
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    .line 186
    :cond_1a5
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    if-nez v3, :cond_1ad

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    if-eqz v3, :cond_2f0

    :cond_1ad
    move v3, v5

    :goto_1ae
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    .line 188
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v3, :cond_1c2

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v6, "vienna"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 189
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    .line 191
    :cond_1c2
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v3, :cond_1d4

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v6, "vienna"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 192
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    .line 194
    :cond_1d4
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v3, :cond_1dc

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    if-eqz v3, :cond_2f3

    :cond_1dc
    move v3, v5

    :goto_1dd
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    .line 196
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v3, :cond_1f1

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v6, "v2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 197
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    .line 199
    :cond_1f1
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v3, :cond_203

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v6, "v2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_203

    .line 200
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    .line 202
    :cond_203
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    if-nez v3, :cond_20b

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    if-eqz v3, :cond_2f6

    :cond_20b
    move v3, v5

    :goto_20c
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    .line 204
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v3, :cond_21f

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "chagall"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 205
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    .line 208
    :cond_21f
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v3, :cond_230

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "mondrian"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_230

    .line 209
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    .line 212
    :cond_230
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v3, :cond_241

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "flte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_241

    .line 213
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    .line 216
    :cond_241
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v3, :cond_252

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "ks01"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_252

    .line 217
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    .line 220
    :cond_252
    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v6, "vzw"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_260

    .line 221
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 224
    :cond_260
    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "js01"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26d

    .line 225
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    .line 228
    :cond_26d
    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "ms013g"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27a

    .line 229
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    .line 232
    :cond_27a
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v3, :cond_28b

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "refresh"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28b

    .line 233
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    .line 236
    :cond_28b
    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v6, "d2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_298

    .line 237
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_298} :catch_2f9

    .line 245
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_298
    :goto_298
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v3, :cond_2a4

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v3, :cond_2a4

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    if-eqz v3, :cond_317

    :cond_2a4
    move v3, v5

    :goto_2a5
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    .line 248
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-nez v3, :cond_2af

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    if-eqz v3, :cond_319

    :cond_2af
    move v3, v5

    :goto_2b0
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TURBO_MODE_BOOSTER:Z

    .line 250
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v3, :cond_2ba

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v3, :cond_31b

    :cond_2ba
    move v3, v5

    :goto_2bb
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    .line 252
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    .line 254
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    .line 256
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v3, :cond_2d1

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v3, :cond_2d1

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    if-eqz v3, :cond_31d

    :cond_2d1
    move v3, v5

    :goto_2d2
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_POWERSTRETCH:Z

    .line 259
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    .line 261
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_NAVIGATION:Z

    .line 263
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    .line 265
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    .line 267
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v3, :cond_2e8

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v3, :cond_2e9

    :cond_2e8
    move v4, v5

    :cond_2e9
    sput-boolean v4, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    .line 269
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    return-void

    .restart local v2    # "f":Ljava/lang/reflect/Field;
    :cond_2f0
    move v3, v4

    .line 186
    goto/16 :goto_1ae

    :cond_2f3
    move v3, v4

    .line 194
    goto/16 :goto_1dd

    :cond_2f6
    move v3, v4

    .line 202
    goto/16 :goto_20c

    .line 240
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :catch_2f9
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SSRMv2:Feature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_298

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_317
    move v3, v4

    .line 245
    goto :goto_2a5

    :cond_319
    move v3, v4

    .line 248
    goto :goto_2b0

    :cond_31b
    move v3, v4

    .line 250
    goto :goto_2bb

    :cond_31d
    move v3, v4

    .line 256
    goto :goto_2d2
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
