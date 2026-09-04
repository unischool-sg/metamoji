.class Lcom/metamoji/ui/dialog/DocumentListDialog$3;
.super Ljava/lang/Object;
.source "DocumentListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentListDialog;->handleItemClick(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$noteListViewFragment:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentListDialog;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->val$docId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->val$noteListViewFragment:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$3;->val$docId:Ljava/lang/String;

    new-instance v5, Lcom/metamoji/ui/dialog/DocumentListDialog$3$1;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/dialog/DocumentListDialog$3$1;-><init>(Lcom/metamoji/ui/dialog/DocumentListDialog$3;)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    return-void
.end method
