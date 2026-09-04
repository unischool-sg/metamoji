.class Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils$3;->syncEnd(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CabinetUtils$3;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1325
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1327
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    iget-boolean v3, v3, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$isReadOnly:Z

    new-instance v5, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1$1;-><init>(Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    return-void
.end method
