.class public Lcom/android/server/ssrm/HotGameList;
.super Ljava/lang/Object;
.source "HotGameList.java"


# static fields
.field public static HotGameGroup0:[Ljava/lang/String;

.field public static HotGameGroup1:[Ljava/lang/String;

.field public static HotGameGroup2:[Ljava/lang/String;

.field public static HotGameGroup3:[Ljava/lang/String;

.field public static HotGameGroup4:[Ljava/lang/String;

.field public static HotGameGroup5:[Ljava/lang/String;

.field static sKnownGameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x19

    const/16 v8, 0x14

    const/16 v7, 0x23

    .line 23
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x1a

    new-array v5, v5, [I

    fill-array-data v5, :array_520

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x1b

    new-array v5, v5, [I

    fill-array-data v5, :array_558

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    .line 34
    const/16 v4, 0x32

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_592

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_5bc

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_5e4

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_62e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_678

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x24

    new-array v6, v6, [I

    fill-array-data v6, :array_6c2

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_70e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x1e

    new-array v6, v6, [I

    fill-array-data v6, :array_746

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x1f

    new-array v6, v6, [I

    fill-array-data v6, :array_786

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_7c8

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-array v6, v9, [I

    fill-array-data v6, :array_80e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x16

    new-array v6, v6, [I

    fill-array-data v6, :array_844

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_874

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_8ac

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_8da

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_920

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    new-array v6, v9, [I

    fill-array-data v6, :array_94e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_984

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x12

    new-array v6, v9, [I

    fill-array-data v6, :array_9ac

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_9e2

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_a20

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0x15

    new-array v6, v8, [I

    fill-array-data v6, :array_a4a

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x13

    new-array v6, v6, [I

    fill-array-data v6, :array_a76

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_aa0

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_ae6

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v5, v5, [I

    fill-array-data v5, :array_b24

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/16 v5, 0x1a

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_b58

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_b96

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    new-array v6, v9, [I

    fill-array-data v6, :array_bce

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0x11

    new-array v6, v6, [I

    fill-array-data v6, :array_c04

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    new-array v6, v8, [I

    fill-array-data v6, :array_c2a

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    new-array v6, v8, [I

    fill-array-data v6, :array_c56

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0x1b

    new-array v6, v6, [I

    fill-array-data v6, :array_c82

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0x16

    new-array v6, v6, [I

    fill-array-data v6, :array_cbc

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0xf

    new-array v6, v6, [I

    fill-array-data v6, :array_cec

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v5, v5, [I

    fill-array-data v5, :array_d0e

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/16 v5, 0x24

    const/16 v6, 0x10

    new-array v6, v6, [I

    fill-array-data v6, :array_d42

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x25

    new-array v6, v7, [I

    fill-array-data v6, :array_d66

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x26

    new-array v6, v7, [I

    fill-array-data v6, :array_db0

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x27

    new-array v6, v7, [I

    fill-array-data v6, :array_dfa

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x28

    new-array v6, v7, [I

    fill-array-data v6, :array_e44

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x29

    new-array v6, v7, [I

    fill-array-data v6, :array_e8e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_ed8

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_ef2

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    new-array v6, v8, [I

    fill-array-data v6, :array_f0c

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_f38

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_f66

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    const/16 v6, 0x17

    new-array v6, v6, [I

    fill-array-data v6, :array_f7e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x30

    const/16 v6, 0x1b

    new-array v6, v6, [I

    fill-array-data v6, :array_fb0

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x31

    const/16 v6, 0x10

    new-array v6, v6, [I

    fill-array-data v6, :array_fea

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    .line 219
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_100e

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_1032

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_1054

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_107c

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x1c

    new-array v6, v6, [I

    fill-array-data v6, :array_10a4

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x10

    new-array v6, v6, [I

    fill-array-data v6, :array_10e0

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    .line 241
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-array v5, v9, [I

    fill-array-data v5, :array_1104

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_113a

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const/16 v6, 0x12

    new-array v6, v6, [I

    fill-array-data v6, :array_1164

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    .line 254
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/16 v5, 0x1b

    new-array v5, v5, [I

    fill-array-data v5, :array_118c

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0x22

    new-array v5, v5, [I

    fill-array-data v5, :array_11c6

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const/16 v6, 0x16

    new-array v6, v6, [I

    fill-array-data v6, :array_120e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x1b

    new-array v6, v6, [I

    fill-array-data v6, :array_123e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_1278

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v8, [I

    fill-array-data v6, :array_12a6

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x1a

    new-array v6, v6, [I

    fill-array-data v6, :array_12d2

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v8, [I

    fill-array-data v6, :array_130a

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_1336

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x21

    new-array v6, v6, [I

    fill-array-data v6, :array_1374

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0xc

    new-array v6, v6, [I

    fill-array-data v6, :array_13ba

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v9, [I

    fill-array-data v6, :array_13d6

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    .line 302
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    new-array v5, v7, [I

    fill-array-data v5, :array_140c

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_1456

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_14a0

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_14ea

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_1534

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_157e

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_1598

    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->HotGameGroup5:[Ljava/lang/String;

    .line 331
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    .line 334
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_47d
    if-ge v1, v2, :cond_489

    aget-object v3, v0, v1

    .line 335
    .local v3, "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_47d

    .line 337
    .end local v3    # "s":Ljava/lang/String;
    :cond_489
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_48d
    if-ge v1, v2, :cond_499

    aget-object v3, v0, v1

    .line 338
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_48d

    .line 340
    .end local v3    # "s":Ljava/lang/String;
    :cond_499
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_49d
    if-ge v1, v2, :cond_4a9

    aget-object v3, v0, v1

    .line 341
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_49d

    .line 343
    .end local v3    # "s":Ljava/lang/String;
    :cond_4a9
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4ad
    if-ge v1, v2, :cond_4b9

    aget-object v3, v0, v1

    .line 344
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_4ad

    .line 346
    .end local v3    # "s":Ljava/lang/String;
    :cond_4b9
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4bd
    if-ge v1, v2, :cond_4c9

    aget-object v3, v0, v1

    .line 347
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_4bd

    .line 349
    .end local v3    # "s":Ljava/lang/String;
    :cond_4c9
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup5:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4cd
    if-ge v1, v2, :cond_4d9

    aget-object v3, v0, v1

    .line 350
    .restart local v3    # "s":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_4cd

    .line 353
    .end local v3    # "s":Ljava/lang/String;
    :cond_4d9
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    new-array v5, v8, [I

    fill-array-data v5, :array_15b2

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_15de

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const/16 v5, 0x1c

    new-array v5, v5, [I

    fill-array-data v5, :array_160c

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v4, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_1648

    invoke-static {v5}, Lcom/android/server/ssrm/HotGameList;->x([I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void

    .line 23
    :array_520
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x37
        0x15
        0x1e
        0x15
        0x15
        0x37
        0x1b
        0x8
        0x18
        0x16
        0x1f
        0x31
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_558
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x8
        0x18
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x9
        0x54
        0xe
        0x13
        0x11
        0x13
        0x11
        0x1b
        0x8
        0xe
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 34
    :array_592
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_5bc
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x14
        0x1b
    .end array-data

    :array_5e4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x33
        0x37
        0x32
        0x37
    .end array-data

    :array_62e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x33
        0x3b
        0x32
        0x37
    .end array-data

    :array_678
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x37
        0x38
        0x32
        0x37
    .end array-data

    :array_6c2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x2
        0xa
        0x1f
        0x8
        0x13
        0x1f
        0x14
        0x19
        0x1f
        0x25
        0x1d
        0x1b
        0x17
        0x1f
        0x25
        0x49
        0x1e
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_70e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x0
        0x15
        0x14
        0x1f
        0x54
        0x2e
        0x8
        0xf
        0x19
        0x11
        0x2a
        0x1b
        0x8
        0x11
        0x49
        0x3e
    .end array-data

    :array_746
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0xf
        0x14
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x18
        0xf
        0x9
    .end array-data

    :array_786
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x8
        0x15
        0x17
        0x1b
        0x14
        0x13
        0x1b
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_7c8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0x1b
        0xa
        0x13
        0x14
        0x1b
        0xe
        0x15
        0x8
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x18
        0xf
        0x9
        0x49
        0x1e
    .end array-data

    :array_80e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x2a
        0xf
        0x16
        0x9
        0x1b
        0x8
        0x54
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x2e
        0x8
        0xf
        0x19
        0x11
        0x49
        0x3e
    .end array-data

    :array_844
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x13
        0x8
        0x1f
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x49
        0x1e
    .end array-data

    :array_874
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x8
        0x15
        0x17
        0x1b
        0x14
        0x13
        0x1b
        0x54
        0x1f
        0xf
        0xe
        0x8
        0xf
        0x19
        0x11
    .end array-data

    :array_8ac
    .array-data 4
        0x1b
        0x13
        0x8
        0x54
        0x2e
        0x8
        0xf
        0x19
        0x11
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x37
        0x1b
        0x14
        0x13
        0x1b
    .end array-data

    :array_8da
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x1b
        0x1e
        0x1f
        0x16
        0x1f
        0x13
        0x14
        0x1f
        0x9
        0x17
        0x13
        0xe
        0x12
        0x9
        0x13
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_920
    .array-data 4
        0xa
        0x16
        0x54
        0x9
        0xf
        0x8
        0x13
        0x2
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x8
        0xf
        0x19
        0x11
    .end array-data

    :array_94e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x13
        0xe
        0xe
        0x1b
        0x16
        0x1f
        0x9
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_984
    .array-data 4
        0xd
        0xd
        0xd
        0x54
        0x19
        0x12
        0x13
        0x54
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x39
        0x1b
        0x8
    .end array-data

    :array_9ac
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0x14
        0x15
        0x9
        0x15
        0x1c
        0xe
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x8
        0xf
        0x19
        0x11
    .end array-data

    :array_9e2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0x14
        0x15
        0x9
        0x15
        0x1c
        0xe
        0x54
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x8
        0xf
        0x19
        0x11
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    :array_a20
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xc
        0x1d
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_a4a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x19
        0x11
        0x54
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_a76
    .array-data 4
        0x1b
        0x13
        0x8
        0x54
        0x36
        0x1f
        0x1b
        0x8
        0x14
        0x1f
        0x8
        0x9
        0x2a
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_aa0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x49
        0xd
        0x1d
        0x54
        0x17
        0x15
        0x14
        0x9
        0xe
        0x1f
        0x8
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
    .end array-data

    :array_ae6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0x13
        0x17
        0x1f
        0x11
        0x13
        0x16
        0x16
        0x1f
        0x8
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x49
        0x3e
    .end array-data

    :array_b24
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0x8
        0x13
        0x1c
        0x13
        0x14
        0x1d
        0x1d
        0x1f
        0x8
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
    .end array-data

    :array_b58
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x19
        0x12
        0x15
        0x8
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0xa
        0x1b
        0x8
        0x11
        0x13
        0x14
        0x1d
        0x48
        0x1e
    .end array-data

    :array_b96
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0x16
        0x17
        0xa
        0x16
        0x1f
        0x54
        0x11
        0x15
        0x8
        0x1f
        0x9
        0x18
        0x16
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
    .end array-data

    :array_bce
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1b
        0xe
        0x13
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x54
        0x17
        0x13
        0x16
        0x19
        0x4e
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_c04
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x17
        0x15
        0x14
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_c2a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    :array_c56
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    :array_c82
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x16
        0xa
        0x12
        0x1b
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x54
        0x19
        0x1b
        0x9
        0xe
        0x16
        0x1f
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_cbc
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x4d
        0x4d
        0x4d
        0x4f
        0x54
        0x38
        0x1f
        0x1b
        0xe
        0x37
        0x2a
        0x49
    .end array-data

    :array_cec
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x18
        0x15
        0x15
        0x14
        0x1d
    .end array-data

    :array_d0e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0xe
        0xe
        0x54
        0x9
        0xf
        0x12
        0x15
        0x10
        0x13
        0x25
        0x1d
        0x16
        0x25
        0x4e
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_d42
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x13
        0x19
        0x15
        0x8
        0x1f
        0x54
        0x1d
        0x8
        0x15
        0x1b
        0x1e
    .end array-data

    :array_d66
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_db0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_dfa
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4d
        0x32
        0x37
    .end array-data

    :array_e44
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x4d
        0x3b
        0x29
        0x29
    .end array-data

    :array_e8e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x42
        0x32
        0x37
    .end array-data

    :array_ed8
    .array-data 4
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    :array_ef2
    .array-data 4
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    :array_f0c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0xa
        0xc
        0x0
        0x48
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_f38
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x14
        0x15
        0x11
        0x14
        0x15
        0x11
        0x54
        0x38
        0x3f
        0x3b
        0x2f
        0x2e
        0x23
        0x39
        0x33
        0x2e
        0x23
    .end array-data

    :array_f66
    .array-data 4
        0x17
        0x1f
        0x54
        0xa
        0x15
        0xf
        0x54
        0x1b
        0xa
        0xa
    .end array-data

    :array_f7e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x17
        0x15
        0x1e
        0xd
        0x1b
        0x8
        0x9
        0x14
        0x13
        0xa
        0x1f
        0x8
        0x25
        0x43
        0x4b
    .end array-data

    :array_fb0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x14
        0x1c
        0x9
        0x4b
        0x49
        0x25
        0x8
        0x15
        0x25
        0x16
        0x15
        0xd
        0x1f
        0x8
    .end array-data

    :array_fea
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1c
        0x16
        0x19
        0x14
        0x25
        0x14
        0x1f
        0xd
    .end array-data

    .line 219
    :array_100e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x48
    .end array-data

    :array_1032
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x8
        0x15
        0x18
        0x15
        0x19
        0x15
        0xa
    .end array-data

    :array_1054
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x1d
        0x1b
        0x54
        0x9
        0x15
        0x14
        0x13
        0x19
        0x1e
        0x1b
        0x9
        0x12
    .end array-data

    :array_107c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1f
        0xd
        0x1b
        0x8
        0x8
        0x13
        0x15
        0x8
        0x9
        0x49
    .end array-data

    :array_10a4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x15
        0x19
        0x13
        0x1b
        0x16
        0xb
        0xf
        0x1b
        0x14
        0xe
        0xf
        0x17
        0x54
        0x1b
        0x19
        0x13
        0xe
        0x3
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    :array_10e0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x10
        0x1f
        0x14
        0x17
        0x54
        0x12
        0x1f
        0x8
        0x15
        0x1f
        0x9
    .end array-data

    .line 241
    :array_1104
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0xa
        0x13
        0x19
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x3f
        0xa
        0x13
        0x19
        0x39
        0x13
        0xe
        0x1b
        0x1e
        0x1f
        0x16
    .end array-data

    :array_113a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_1164
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x14
        0x1b
    .end array-data

    .line 254
    :array_118c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1f
        0x9
        0xe
        0x9
        0x15
        0x16
        0x13
        0xe
        0x1b
        0x13
        0x8
        0x1f
        0x54
        0x9
        0x15
        0x16
        0x13
        0xe
        0x1b
        0x13
        0x8
        0x1f
    .end array-data

    :array_11c6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x8
        0x1f
        0x9
        0x19
        0x1f
        0x14
        0xe
        0x17
        0x15
        0x15
        0x14
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x18
        0x16
        0x15
        0x19
        0x11
        0x3
        0x25
        0x8
        0x15
        0x1b
        0x1e
        0x9
    .end array-data

    :array_120e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x19
        0x11
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x9
        0x13
        0x17
        0xf
        0x16
        0x1b
        0xe
        0x15
        0x8
    .end array-data

    :array_123e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x15
        0xc
        0x13
        0x16
        0x1f
        0x2
        0x54
        0xe
        0x8
        0xf
        0x19
        0x11
        0x9
        0x13
        0x17
        0xf
        0x16
        0x1b
        0xe
        0x15
        0x8
        0x49
        0x1e
    .end array-data

    :array_1278
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1e
        0x15
        0x3
        0x1f
        0x15
        0x14
        0x54
        0x3c
        0xa
        0x9
        0x3e
        0x1f
        0x1c
        0x1f
        0x14
        0x19
        0x1f
    .end array-data

    :array_12a6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x16
        0x15
        0x15
        0x54
        0x9
        0xf
        0x18
        0xd
        0x1b
        0x3
        0x9
        0xf
        0x8
        0x1c
    .end array-data

    :array_12d2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x14
        0x13
        0x2
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0xd
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x9
        0xa
        0x15
        0x8
        0xe
        0x9
    .end array-data

    :array_130a
    .array-data 4
        0xa
        0x16
        0x54
        0x17
        0x1b
        0x19
        0x1b
        0xb
        0xf
        0x1f
        0x54
        0x12
        0x1b
        0x14
        0x1d
        0x17
        0x1b
        0x14
        0xa
        0x16
    .end array-data

    :array_1336
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1e
        0x13
        0x9
        0x14
        0x1f
        0x3
        0x54
        0xd
        0x12
        0x1f
        0x8
        0x1f
        0x9
        0x17
        0x3
        0xd
        0x1b
        0xe
        0x1f
        0x8
        0x48
        0x25
        0x1d
        0x15
        0x15
    .end array-data

    :array_1374
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x13
        0x1e
        0x1b
        0x9
        0xa
        0x16
        0x1b
        0x3
        0x1f
        0x8
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0xa
        0x1b
        0xa
        0x1b
        0xa
        0x1f
        0x1b
        0x8
        0x9
        0x1b
        0x1d
        0x1b
    .end array-data

    :array_13ba
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x19
        0x12
        0x13
        0x54
        0x38
        0x15
        0x1b
        0xe
    .end array-data

    :array_13d6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x1f
        0x8
        0xa
        0x16
        0x1f
        0x16
        0x1b
        0x18
        0x54
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x4e
        0x11
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    .line 302
    :array_140c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_1456
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    :array_14a0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4d
        0x32
        0x37
    .end array-data

    :array_14ea
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x4d
        0x3b
        0x29
        0x29
    .end array-data

    :array_1534
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x42
        0x32
        0x37
    .end array-data

    :array_157e
    .array-data 4
        0x3d
        0x3b
        0x34
        0x3e
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    :array_1598
    .array-data 4
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
    .end array-data

    .line 353
    :array_15b2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    .line 357
    :array_15de
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
        0x48
    .end array-data

    .line 361
    :array_160c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x25
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 366
    :array_1648
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x48
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKnownGame(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 372
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->sKnownGameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static x([I)Ljava/lang/String;
    .registers 2
    .param p0, "raw"    # [I

    .prologue
    .line 376
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
