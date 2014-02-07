.class Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .registers 3

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/general/MiscPolicy$1;

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1065
    const/4 v14, 0x0

    .line 1085
    .local v14, "ret":Z
    new-instance v6, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v6}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    .line 1086
    .local v6, "fontWriter":Lcom/android/server/enterprise/general/FontWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1089
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 1090
    .local v10, "index":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v11

    .line 1092
    .local v11, "installedFontList":[Ljava/lang/String;
    if-nez v11, :cond_23

    .line 1093
    const-string v18, "MiscPolicy"

    const-string v19, "changeFont():Installed font list is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    .end local v14    # "ret":Z
    :cond_22
    :goto_22
    return v14

    .line 1097
    .restart local v14    # "ret":Z
    :cond_23
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_52

    .line 1098
    aget-object v18, v11, v8

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9a

    .line 1099
    move v10, v8

    .line 1100
    const-string v18, "MiscPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "index"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_52
    const-string v18, "default"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9d

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "sans.loc"

    const-string v20, "default"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    aget-object v18, v11, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1110
    const-string v18, "MiscPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "default font is selected..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const/4 v14, 0x1

    goto :goto_22

    .line 1097
    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 1114
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v15

    .line 1115
    .local v15, "sansTypeface":Lcom/android/server/enterprise/general/Typeface;
    if-nez v15, :cond_b6

    .line 1116
    const-string v18, "MiscPolicy"

    const-string v19, "change font failed"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 1120
    :cond_b6
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1121
    if-eqz p2, :cond_c8

    const-string v18, "com.monotype.android.font."

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 1124
    :cond_c8
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v16

    .line 1127
    .local v16, "selectedFont":Ljava/lang/String;
    const-string v18, ".xml"

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1129
    .local v7, "fontdir":Ljava/lang/String;
    const-string v18, " "

    const-string v19, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1132
    .local v5, "fontDir":Ljava/io/File;
    if-nez v5, :cond_102

    .line 1133
    const-string v18, "MiscPolicy"

    const-string v19, "create fontDir object is null "

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/4 v14, 0x0

    goto/16 :goto_22

    .line 1139
    :cond_102
    const/16 v17, 0x0

    .line 1140
    .local v17, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    if-eqz v15, :cond_176

    .line 1141
    const/4 v8, 0x0

    :goto_107
    iget-object v0, v15, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_176

    .line 1142
    iget-object v0, v15, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    check-cast v17, Lcom/android/server/enterprise/general/TypefaceFile;

    .line 1146
    .restart local v17    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :try_start_11f
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 1147
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1149
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 1150
    .local v9, "in":Ljava/io/InputStream;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v5, v9, v0}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_14f} :catch_152

    .line 1141
    add-int/lit8 v8, v8, 0x1

    goto :goto_107

    .line 1152
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v13    # "res":Landroid/content/res/Resources;
    :catch_152
    move-exception v4

    .line 1153
    .local v4, "ex":Ljava/lang/Exception;
    const-string v18, "MiscPolicy"

    const-string v19, "changeFont():Exception"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v18, "MiscPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 1160
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "sans.loc"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1162
    const-string v18, "MiscPolicy"

    const-string v19, "change font:Done"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const/4 v14, 0x1

    goto/16 :goto_22
.end method

.method private getFontString()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1240
    const/4 v2, 0x0

    .line 1241
    .local v2, "retString":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object v0

    .line 1242
    .local v0, "fontNames":Ljava/util/Vector;
    if-nez v0, :cond_9

    .line 1243
    const/4 v3, 0x0

    .line 1250
    :goto_8
    return-object v3

    .line 1244
    :cond_9
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 1248
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    move-object v3, v2

    .line 1250
    goto :goto_8
.end method

.method private getFontsVector()Ljava/util/Vector;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1254
    iput-object v11, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1255
    new-instance v10, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v10}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1257
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1259
    .local v4, "fontPackageNames":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1261
    .local v2, "fontNames":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1262
    .local v9, "typefaceFiles":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 1264
    .local v1, "fontAssetManager":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 1265
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1266
    .local v6, "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1268
    const/16 v10, 0x80

    :try_start_28
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 1271
    const/4 v3, 0x0

    .line 1272
    .local v3, "fontPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_60

    .line 1273
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1274
    const-string v10, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 1272
    :cond_44
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1277
    :cond_47
    const-string v10, "com.monotype.android.font."

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 1278
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1279
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1280
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v10, v1, v3}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    goto :goto_44

    .line 1285
    .end local v3    # "fontPackageName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "res":Landroid/content/res/Resources;
    :catch_5d
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v11

    .line 1288
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fontNames":Ljava/util/Vector;
    :goto_5f
    return-object v2

    .line 1283
    .restart local v2    # "fontNames":Ljava/util/Vector;
    .restart local v3    # "fontPackageName":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_60
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v10, v2, v9, v4}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_65} :catch_5d

    goto :goto_5f
.end method


# virtual methods
.method public getActiveFontPosition()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 1202
    const/4 v2, 0x0

    .line 1203
    .local v2, "map":Ljava/util/Map;
    const/4 v4, 0x0

    .line 1206
    .local v4, "str":Ljava/io/BufferedInputStream;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.settings"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1208
    .local v3, "settingContext":Landroid/content/Context;
    const-string v8, "prefs"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1210
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 1211
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x4000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_43
    .catchall {:try_start_3 .. :try_end_28} :catchall_4f

    .line 1212
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .local v5, "str":Ljava/io/BufferedInputStream;
    :try_start_28
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_5b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_58

    move-result-object v2

    move-object v4, v5

    .line 1218
    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :cond_2d
    if-eqz v4, :cond_32

    .line 1219
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_4d

    .line 1226
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "settingContext":Landroid/content/Context;
    :cond_32
    :goto_32
    if-eqz v2, :cond_42

    .line 1227
    const-string v8, "SavedClickedItem"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1228
    .local v6, "v":Ljava/lang/Integer;
    if-eqz v6, :cond_42

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1231
    .end local v6    # "v":Ljava/lang/Integer;
    :cond_42
    return v7

    .line 1214
    :catch_43
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 1218
    if-eqz v4, :cond_32

    .line 1219
    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 1221
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v8

    goto :goto_32

    .line 1217
    :catchall_4f
    move-exception v7

    .line 1218
    :goto_50
    if-eqz v4, :cond_55

    .line 1219
    :try_start_52
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 1217
    :cond_55
    :goto_55
    throw v7

    .line 1221
    :catch_56
    move-exception v8

    goto :goto_55

    .line 1217
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "settingContext":Landroid/content/Context;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catchall_58
    move-exception v7

    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    goto :goto_50

    .line 1214
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catch_5b
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    goto :goto_44
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1167
    const-string v2, "MiscPolicy"

    const-string v3, "getSystemActiveFont():getting active system font:"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v1

    .line 1169
    .local v1, "position":I
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveFontPosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "fonts":[Ljava/lang/String;
    if-eqz v0, :cond_2c

    .line 1172
    aget-object v2, v0, v1

    .line 1174
    :goto_2b
    return-object v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1235
    const-string v0, "MiscPolicy"

    const-string v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .registers 13
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 1292
    const/4 v3, 0x0

    .line 1293
    .local v3, "mode":I
    const/4 v6, 0x0

    .line 1296
    .local v6, "settingContext":Landroid/content/Context;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.android.settings"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_19

    move-result-object v6

    .line 1302
    :goto_f
    if-nez v6, :cond_1e

    .line 1303
    const-string v7, "MiscPolicy"

    const-string v8, "Setting Context is Null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :goto_18
    return-void

    .line 1298
    :catch_19
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 1307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    const-string v7, "prefs"

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1310
    .local v4, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1311
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "SavedClickedItem"

    invoke-interface {v1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1313
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1316
    .local v5, "prefName":Ljava/lang/String;
    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1317
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1318
    .local v2, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v7, "MONOTYPE"

    invoke-interface {v2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1319
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_18
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1010
    const-string v18, "MiscPolicy"

    const-string v19, "setSystemActiveFont():Start"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/4 v14, 0x0

    .line 1013
    .local v14, "ret":Z
    if-nez p1, :cond_14

    .line 1014
    const-string v18, "MiscPolicy"

    const-string v19, "setSystemActiveFont():Invalid input"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v14

    .line 1061
    :goto_13
    return v18

    .line 1018
    :cond_14
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 1019
    if-nez v14, :cond_1d

    .line 1020
    const/16 v18, 0x0

    goto :goto_13

    .line 1023
    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1024
    .local v16, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1025
    .local v5, "am":Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1026
    .local v6, "config":Landroid/content/res/Configuration;
    new-instance v13, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1027
    .local v13, "randomizer":Ljava/util/Random;
    const/4 v12, 0x0

    .line 1028
    .local v12, "min":I
    const/16 v11, 0x2710

    .line 1032
    .local v11, "max":I
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1033
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3d} :catch_79

    .line 1044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1045
    .local v9, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1047
    .local v3, "activityManager":Landroid/app/ActivityManager;
    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1049
    .local v4, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_84

    .line 1050
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_84

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1051
    .local v2, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1055
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v3, v15}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_61

    .line 1037
    .end local v2    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "identity":J
    .end local v11    # "max":I
    .end local v12    # "min":I
    .end local v13    # "randomizer":Ljava/util/Random;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "token":J
    :catch_79
    move-exception v7

    .line 1038
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "MiscPolicy"

    const-string v19, "setSystemActiveFont():Exception"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/16 v18, 0x0

    goto :goto_13

    .line 1060
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityManager":Landroid/app/ActivityManager;
    .restart local v4    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "am":Landroid/app/IActivityManager;
    .restart local v6    # "config":Landroid/content/res/Configuration;
    .restart local v9    # "identity":J
    .restart local v11    # "max":I
    .restart local v12    # "min":I
    .restart local v13    # "randomizer":Ljava/util/Random;
    .restart local v16    # "token":J
    :cond_84
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    .line 1061
    goto :goto_13
.end method
