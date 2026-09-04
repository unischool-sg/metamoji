.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareInviteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1212
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1216
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 1217
    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->isAllowedToParticipateBox(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;)V

    return-void
.end method
