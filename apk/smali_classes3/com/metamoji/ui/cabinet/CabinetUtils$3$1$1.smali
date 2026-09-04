.class Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1327
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;->this$1:Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 1330
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;->this$1:Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object v2

    .line 1334
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;->this$1:Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;

    if-eqz v2, :cond_0

    .line 1332
    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iget-object v6, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$pageId:Ljava/lang/String;

    iget-object v1, v0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;->this$1:Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iget-object v9, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$cmdAfterShareNoteOpenedInfo:Ljava/util/Map;

    const-string v8, "editNote"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void

    .line 1334
    :cond_0
    iget-object v10, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, v0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;->this$1:Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iget-object v14, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$pageId:Ljava/lang/String;

    iget-object v1, v0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;->this$1:Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$cmdAfterShareNoteOpenedInfo:Ljava/util/Map;

    const-string v16, "editNote"

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v15, p4

    move-object/from16 v17, v1

    invoke-static/range {v10 .. v17}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method
