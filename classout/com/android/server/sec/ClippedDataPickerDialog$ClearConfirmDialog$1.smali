.class Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)V
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 20
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 306
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_27a

    .line 307
    const-string v14, "ClipboardServiceEx"

    const-string v15, "pressed OK"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    if-nez v14, :cond_19

    .line 430
    :cond_18
    :goto_18
    return-void

    .line 313
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v3

    .line 314
    .local v3, "count":I
    const/4 v9, 0x0

    .line 316
    .local v9, "protectCount":I
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_44

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clear button touched... count :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, "clearedClipsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 327
    .local v8, "id":I
    if-nez v8, :cond_cd

    .line 328
    new-instance v10, Ljava/io/File;

    const-string v14, "/data/clipboard"

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v10, "rootPath":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    const-string v14, "/data/clipboard/shared"

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v12, "sharedPath":Ljava/io/File;
    :goto_5d
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: Current User = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ; rootPath = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ; sharedPath = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8a
    if-ge v7, v3, :cond_1f1

    .line 340
    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_bc

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mCbm.getDataListSize() :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_bc
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # invokes: Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z
    invoke-static {v14, v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c5} :catch_1eb

    move-result v14

    if-eqz v14, :cond_10d

    .line 343
    add-int/lit8 v9, v9, 0x1

    .line 339
    :cond_ca
    :goto_ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_8a

    .line 331
    .end local v7    # "i":I
    .end local v10    # "rootPath":Ljava/io/File;
    .end local v12    # "sharedPath":Ljava/io/File;
    :cond_cd
    new-instance v10, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/clipboard"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .restart local v10    # "rootPath":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/clipboard"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/shared"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v12    # "sharedPath":Ljava/io/File;
    goto/16 :goto_5d

    .line 346
    .restart local v7    # "i":I
    :cond_10d
    :try_start_10d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v5, "deleteItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v14, v5}, Lcom/android/server/sec/ClippedDataPickerGridView;->setDeletedItems(Ljava/util/ArrayList;)V

    .line 355
    const/4 v4, 0x0

    .line 356
    .local v4, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v14

    if-eqz v14, :cond_19b

    .line 357
    new-instance v11, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v14, Ljava/io/File;

    const-string v15, "clips.info"

    invoke-direct {v14, v10, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v14, v8}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    .line 359
    .local v11, "rootfm":Landroid/sec/clipboard/data/file/FileManager;
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: protectCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ; rootfm.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v11, :cond_19b

    invoke-virtual {v11}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v14

    if-lt v9, v14, :cond_19b

    .line 363
    new-instance v13, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v14, Ljava/io/File;

    const-string v15, "shared_clips.info"

    invoke-direct {v14, v12, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v13, v14, v8}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    .line 365
    .local v13, "sharedfm":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v13, :cond_183

    .line 366
    invoke-virtual {v11}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v13, v14}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v4

    .line 369
    :cond_183
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v11    # "rootfm":Landroid/sec/clipboard/data/file/FileManager;
    .end local v13    # "sharedfm":Landroid/sec/clipboard/data/file/FileManager;
    :cond_19b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v14

    invoke-interface {v14, v9}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    .line 376
    sget v14, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v14, v14, -0x1

    sput v14, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v14

    if-eqz v14, :cond_ca

    .line 380
    if-eqz v4, :cond_ca

    if-eqz v1, :cond_ca

    .line 381
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: A shared clip is deleted! data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e9
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_1e9} :catch_1eb

    goto/16 :goto_ca

    .line 390
    .end local v4    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v5    # "deleteItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1eb
    move-exception v6

    .line 392
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_ca

    .line 401
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v14

    if-eqz v14, :cond_223

    .line 402
    if-eqz v1, :cond_223

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_223

    .line 403
    const-string v14, "ClipboardServiceEx"

    const-string v15, "onClear: Sending ClipsCleared broadcast"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "i":I
    const-string v14, "com.samsung.knox.clipboard.clipscleared"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v7, "i":Landroid/content/Intent;
    const-string v14, "ClearedClipsArray"

    invoke-virtual {v7, v14, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 415
    .end local v7    # "i":Landroid/content/Intent;
    :cond_223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v14

    if-eqz v14, :cond_269

    .line 416
    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x1030128

    invoke-direct {v2, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 420
    .local v2, "context":Landroid/content/Context;
    :goto_23f
    const v14, 0x1040b37

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v14

    if-nez v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_18

    .line 418
    .end local v2    # "context":Landroid/content/Context;
    :cond_269
    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x103012b

    invoke-direct {v2, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v2    # "context":Landroid/content/Context;
    goto :goto_23f

    .line 424
    .end local v1    # "clearedClipsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "count":I
    .end local v8    # "id":I
    .end local v9    # "protectCount":I
    .end local v10    # "rootPath":Ljava/io/File;
    .end local v12    # "sharedPath":Ljava/io/File;
    :cond_27a
    const/4 v14, -0x2

    move/from16 v0, p2

    if-ne v0, v14, :cond_288

    .line 425
    const-string v14, "ClipboardServiceEx"

    const-string v15, "pressed CANCEL"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 427
    :cond_288
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pressed invalid button. arg1 :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18
.end method
