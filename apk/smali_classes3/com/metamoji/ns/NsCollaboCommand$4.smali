.class Lcom/metamoji/ns/NsCollaboCommand$4;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createRoomSub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;ZZLjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$companyId:Ljava/lang/String;

.field final synthetic val$currentDocument:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$currentDriveId:Ljava/lang/String;

.field final synthetic val$deleteCurrentDoc:Z

.field final synthetic val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field final synthetic val$docIds:Ljava/util/List;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$qwd:Ljava/lang/String;

.field final synthetic val$shareTemplateDic:Ljava/util/Map;

.field final synthetic val$submitByStudent:Z

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/util/List;Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 316
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$submitByStudent:Z

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$docIds:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$currentDriveId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p6, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$currentDocument:Lcom/metamoji/nt/NtDocument;

    iput-boolean p7, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$deleteCurrentDoc:Z

    iput-object p8, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$shareTemplateDic:Ljava/util/Map;

    iput-object p9, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$companyId:Ljava/lang/String;

    iput-object p10, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$email:Ljava/lang/String;

    iput-object p11, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$password:Ljava/lang/String;

    iput-object p12, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$qwd:Ljava/lang/String;

    iput-object p13, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$userId:Ljava/lang/String;

    iput-object p14, p0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$nickName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/nt/NtCommand;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/metamoji/nt/NtCommand;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 342
    iget-boolean v1, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$submitByStudent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 344
    const-string v1, "allowToOpePage"

    move-object/from16 v3, p10

    invoke-static {v3, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 346
    const-string v3, "allowToEditOths"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 348
    const-string v3, "allowToJoinNote"

    invoke-static {v1, v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 350
    const-string v3, "allowToChgGrp"

    invoke-static {v1, v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p10

    move-object v7, v3

    .line 354
    :goto_0
    iget-object v13, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$docIds:Ljava/util/List;

    if-eqz v13, :cond_1

    .line 356
    iget-object v3, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v4, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$currentDriveId:Ljava/lang/String;

    move-object/from16 v6, p3

    move-object/from16 v5, p8

    move/from16 v8, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move-object/from16 v12, p18

    invoke-static/range {v3 .. v13}, Lcom/metamoji/ns/NsCollaboCommand;->createRoomMultiNotesToMultiBoxes(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V

    return-void

    .line 371
    :cond_1
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 372
    iget-object v3, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v4, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v5, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$currentDocument:Lcom/metamoji/nt/NtDocument;

    iget-boolean v6, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$deleteCurrentDoc:Z

    move-object/from16 v25, v7

    iget-object v7, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$shareTemplateDic:Ljava/util/Map;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v8, p8

    move/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v11, v25

    invoke-static/range {v3 .. v16}, Lcom/metamoji/ns/NsCollaboCommand;->createRoomSingleNoteToMultiBoxes(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;ZLjava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V

    return-void

    .line 386
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 387
    iget-object v3, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v4, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v5, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$currentDocument:Lcom/metamoji/nt/NtDocument;

    iget-object v6, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$companyId:Ljava/lang/String;

    move-object/from16 v25, v7

    iget-object v7, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$email:Ljava/lang/String;

    iget-object v8, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$password:Ljava/lang/String;

    iget-object v9, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$qwd:Ljava/lang/String;

    iget-object v10, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$userId:Ljava/lang/String;

    iget-object v11, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$nickName:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$deleteCurrentDoc:Z

    iget-object v13, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$shareTemplateDic:Ljava/util/Map;

    iget-boolean v1, v0, Lcom/metamoji/ns/NsCollaboCommand$4;->val$submitByStudent:Z

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v24, p9

    move-object/from16 v22, p11

    move-object/from16 v23, p12

    move-object/from16 v26, p13

    move/from16 v27, p14

    move-object/from16 v28, p15

    move-object/from16 v29, p16

    move-object/from16 v30, p17

    move-object/from16 v31, p18

    move/from16 v32, v1

    invoke-static/range {v3 .. v32}, Lcom/metamoji/ns/NsCollaboCommand;->createRoomSingleNoteToSingleBox(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/nt/NtCommand;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;Z)V

    :cond_3
    return-void
.end method
